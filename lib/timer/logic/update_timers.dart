import 'dart:isolate';
import 'dart:ui';

import 'package:clock_app/alarm/logic/alarm_isolate.dart';
import 'package:clock_app/alarm/logic/schedule_alarm.dart';
import 'package:clock_app/common/types/notification_type.dart';
import 'package:clock_app/common/types/schedule_id.dart';
import 'package:clock_app/timer/types/timer.dart';
import 'package:clock_app/common/utils/list_storage.dart';
import 'package:clock_app/widgets/logic/update_widgets.dart';
import 'package:clock_app/common/types/timer_state.dart';

Future<void> cancelAllTimers() async {
  List<ScheduleId> scheduleIds =
      await loadList<ScheduleId>('timer_schedule_ids');
  for (var scheduleId in scheduleIds) {
    await cancelAlarm(scheduleId.id, ScheduledNotificationType.timer);
  }
  scheduleIds.clear();
  await saveList('timer_schedule_ids', scheduleIds);
}

Future<void> resetAllTimers() async {
  await cancelAllTimers();

  List<ClockTimer> timers = await loadList("timers");
  for (var timer in timers) {
    await timer.reset();
    await timer.update("resetAllTimers()");
  }
  await saveList("timers", timers);
  SendPort? sendPort = IsolateNameServer.lookupPortByName(updatePortName);
  sendPort?.send("updateTimers");
  await updateTimerWidget();
}

Future<void> updateTimer(int scheduleId, String description) async {
  List<ClockTimer> timers = await loadList("timers");
  int timerIndex = timers.indexWhere((timer) => timer.id == scheduleId);
  ClockTimer timer = timers[timerIndex];

  await timer.update(description);

  timers[timerIndex] = timer;
  await saveList("timers", timers);
  await updateTimerWidget();
}

Future<void> updateTimers(String description) async {
  await cancelAllTimers();

  List<ClockTimer> timers = await loadList("timers");

  for (var timer in timers) {
    await timer.update(description);
  }
  await saveList("timers", timers);

  SendPort? sendPort = IsolateNameServer.lookupPortByName(updatePortName);
  sendPort?.send("updateTimers");
  await updateTimerWidget();
}

Future<void> updateTimerById(
    int scheduleId, Future<void> Function(ClockTimer) callback) async {
  List<ClockTimer> timers = await loadList("timers");
  int timerIndex = timers.indexWhere((timer) => timer.id == scheduleId);
  if (timerIndex == -1) return;
  ClockTimer timer = timers[timerIndex];
  await callback(timer);
  timers[timerIndex] = timer;
  await saveList("timers", timers);

  SendPort? sendPort = IsolateNameServer.lookupPortByName(updatePortName);
  sendPort?.send("updateTimers");
  await updateTimerWidget();
}

String _formatTimerDuration(int totalSeconds) {
  int hours = totalSeconds ~/ 3600;
  int minutes = (totalSeconds % 3600) ~/ 60;
  int seconds = totalSeconds % 60;
  
  return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
}

String _getTimerStateString(TimerState state) {
  switch (state) {
    case TimerState.running:
      return 'Running';
    case TimerState.paused:
      return 'Paused';
    case TimerState.stopped:
      return 'Stopped';
  }
}

Future<void> updateTimerWidget() async {
  List<ClockTimer> timers = await loadList("timers");
  
  // Find the first running or paused timer, or the first timer if none are active
  ClockTimer? activeTimer;
  for (var timer in timers) {
    if (timer.isRunning || timer.isPaused) {
      activeTimer = timer;
      break;
    }
  }
  
  // If no active timer, use the first timer or show default
  if (activeTimer == null && timers.isNotEmpty) {
    activeTimer = timers.first;
  }
  
  if (activeTimer != null) {
    setTimerWidgetData(
      label: activeTimer.label,
      time: _formatTimerDuration(activeTimer.remainingSeconds),
      state: _getTimerStateString(activeTimer.state),
    );
  } else {
    // Show default when no timers exist
    setTimerWidgetData(
      label: 'Timer',
      time: '00:00:00',
      state: 'Stopped',
    );
  }
}
