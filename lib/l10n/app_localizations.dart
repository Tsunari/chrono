import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('cs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hu'),
    Locale('it'),
    Locale('ko'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sr'),
    Locale('ta'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// Title of the clock screen
  ///
  /// In en, this message translates to:
  /// **'Clock'**
  String get clockTitle;

  /// Title of the alarm screen
  ///
  /// In en, this message translates to:
  /// **'Alarm'**
  String get alarmTitle;

  /// Title of the timer screen
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get timerTitle;

  /// Title of the stopwatch screen
  ///
  /// In en, this message translates to:
  /// **'Stopwatch'**
  String get stopwatchTitle;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @generalSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get generalSettingGroup;

  /// No description provided for @generalSettingGroupDescription.
  ///
  /// In en, this message translates to:
  /// **'Set app wide settings like time format'**
  String get generalSettingGroupDescription;

  /// No description provided for @languageSetting.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSetting;

  /// No description provided for @dateFormatSetting.
  ///
  /// In en, this message translates to:
  /// **'Date Format'**
  String get dateFormatSetting;

  /// No description provided for @longDateFormatSetting.
  ///
  /// In en, this message translates to:
  /// **'Long Date Format'**
  String get longDateFormatSetting;

  /// No description provided for @timeFormatSetting.
  ///
  /// In en, this message translates to:
  /// **'Time Format'**
  String get timeFormatSetting;

  /// No description provided for @timeFormat12.
  ///
  /// In en, this message translates to:
  /// **'12 hours'**
  String get timeFormat12;

  /// No description provided for @timeFormat24.
  ///
  /// In en, this message translates to:
  /// **'24 hours'**
  String get timeFormat24;

  /// No description provided for @timeFormatDevice.
  ///
  /// In en, this message translates to:
  /// **'Device Settings'**
  String get timeFormatDevice;

  /// No description provided for @showSecondsSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Seconds'**
  String get showSecondsSetting;

  /// No description provided for @timePickerSetting.
  ///
  /// In en, this message translates to:
  /// **'Time Picker'**
  String get timePickerSetting;

  /// No description provided for @pickerDial.
  ///
  /// In en, this message translates to:
  /// **'Dial'**
  String get pickerDial;

  /// No description provided for @pickerInput.
  ///
  /// In en, this message translates to:
  /// **'Input'**
  String get pickerInput;

  /// No description provided for @pickerSpinner.
  ///
  /// In en, this message translates to:
  /// **'Spinner'**
  String get pickerSpinner;

  /// No description provided for @pickerNumpad.
  ///
  /// In en, this message translates to:
  /// **'Numpad'**
  String get pickerNumpad;

  /// No description provided for @durationPickerSetting.
  ///
  /// In en, this message translates to:
  /// **'Duration Picker'**
  String get durationPickerSetting;

  /// No description provided for @pickerRings.
  ///
  /// In en, this message translates to:
  /// **'Rings'**
  String get pickerRings;

  /// No description provided for @interactionsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Interactions'**
  String get interactionsSettingGroup;

  /// No description provided for @swipeActionSetting.
  ///
  /// In en, this message translates to:
  /// **'Swipe Action'**
  String get swipeActionSetting;

  /// No description provided for @swipActionCardAction.
  ///
  /// In en, this message translates to:
  /// **'Card Actions'**
  String get swipActionCardAction;

  /// No description provided for @swipeActionCardActionDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe left or right on the card to perform actions'**
  String get swipeActionCardActionDescription;

  /// No description provided for @swipActionSwitchTabs.
  ///
  /// In en, this message translates to:
  /// **'Switch Tabs'**
  String get swipActionSwitchTabs;

  /// No description provided for @swipeActionSwitchTabsDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe between tabs'**
  String get swipeActionSwitchTabsDescription;

  /// No description provided for @longPressActionSetting.
  ///
  /// In en, this message translates to:
  /// **'Long Press Action'**
  String get longPressActionSetting;

  /// No description provided for @longPressReorderAction.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get longPressReorderAction;

  /// No description provided for @longPressSelectAction.
  ///
  /// In en, this message translates to:
  /// **'Multiselect'**
  String get longPressSelectAction;

  /// No description provided for @melodiesSetting.
  ///
  /// In en, this message translates to:
  /// **'Melodies'**
  String get melodiesSetting;

  /// No description provided for @tagsSetting.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tagsSetting;

  /// No description provided for @vendorSetting.
  ///
  /// In en, this message translates to:
  /// **'Vendor Settings'**
  String get vendorSetting;

  /// No description provided for @vendorSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Manually disable vendor-specific optimizations'**
  String get vendorSettingDescription;

  /// No description provided for @batteryOptimizationSetting.
  ///
  /// In en, this message translates to:
  /// **'Manually Disable Battery Optimization'**
  String get batteryOptimizationSetting;

  /// No description provided for @batteryOptimizationSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Disable battery optimization for this app to prevent alarms from being delayed'**
  String get batteryOptimizationSettingDescription;

  /// No description provided for @allowNotificationSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Allow lock screen notifications for alarms and timers'**
  String get allowNotificationSettingDescription;

  /// No description provided for @autoStartSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Some devices require Auto Start to be enabled for alarms to ring while app is closed'**
  String get autoStartSettingDescription;

  /// No description provided for @allowNotificationSetting.
  ///
  /// In en, this message translates to:
  /// **'Manually Allow All Notifications'**
  String get allowNotificationSetting;

  /// No description provided for @autoStartSetting.
  ///
  /// In en, this message translates to:
  /// **'Auto Start'**
  String get autoStartSetting;

  /// No description provided for @permissionsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissionsSettingGroup;

  /// No description provided for @ignoreBatteryOptimizationSetting.
  ///
  /// In en, this message translates to:
  /// **'Ignore Battery Optimization'**
  String get ignoreBatteryOptimizationSetting;

  /// No description provided for @notificationPermissionSetting.
  ///
  /// In en, this message translates to:
  /// **'Notifications Permission'**
  String get notificationPermissionSetting;

  /// No description provided for @notificationPermissionAlreadyGranted.
  ///
  /// In en, this message translates to:
  /// **'Notifications permission already granted'**
  String get notificationPermissionAlreadyGranted;

  /// No description provided for @ignoreBatteryOptimizationAlreadyGranted.
  ///
  /// In en, this message translates to:
  /// **'Ignore battery optimization permission already granted'**
  String get ignoreBatteryOptimizationAlreadyGranted;

  /// No description provided for @animationSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Animations'**
  String get animationSettingGroup;

  /// No description provided for @animationSpeedSetting.
  ///
  /// In en, this message translates to:
  /// **'Animation Speed'**
  String get animationSpeedSetting;

  /// No description provided for @extraAnimationSetting.
  ///
  /// In en, this message translates to:
  /// **'Extra Animations'**
  String get extraAnimationSetting;

  /// No description provided for @appearanceSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceSettingGroup;

  /// No description provided for @appearanceSettingGroupDescription.
  ///
  /// In en, this message translates to:
  /// **'Set themes, colors and change layout'**
  String get appearanceSettingGroupDescription;

  /// No description provided for @nameField.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameField;

  /// No description provided for @colorSetting.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get colorSetting;

  /// No description provided for @textColorSetting.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get textColorSetting;

  /// No description provided for @colorSchemeNamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Color Scheme'**
  String get colorSchemeNamePlaceholder;

  /// No description provided for @colorSchemeBackgroundSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get colorSchemeBackgroundSettingGroup;

  /// No description provided for @colorSchemeAccentSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Accent'**
  String get colorSchemeAccentSettingGroup;

  /// No description provided for @colorSchemeErrorSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get colorSchemeErrorSettingGroup;

  /// No description provided for @colorSchemeCardSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get colorSchemeCardSettingGroup;

  /// No description provided for @colorSchemeOutlineSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Outline'**
  String get colorSchemeOutlineSettingGroup;

  /// No description provided for @colorSchemeShadowSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Shadow'**
  String get colorSchemeShadowSettingGroup;

  /// No description provided for @colorSchemeUseAccentAsOutlineSetting.
  ///
  /// In en, this message translates to:
  /// **'Use Accent as Outline'**
  String get colorSchemeUseAccentAsOutlineSetting;

  /// No description provided for @colorSchemeUseAccentAsShadowSetting.
  ///
  /// In en, this message translates to:
  /// **'Use Accent as Shadow'**
  String get colorSchemeUseAccentAsShadowSetting;

  /// No description provided for @styleThemeNamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Style Theme'**
  String get styleThemeNamePlaceholder;

  /// No description provided for @styleThemeShadowSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Shadow'**
  String get styleThemeShadowSettingGroup;

  /// No description provided for @styleThemeShapeSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Shape'**
  String get styleThemeShapeSettingGroup;

  /// No description provided for @styleThemeElevationSetting.
  ///
  /// In en, this message translates to:
  /// **'Elevation'**
  String get styleThemeElevationSetting;

  /// No description provided for @styleThemeRadiusSetting.
  ///
  /// In en, this message translates to:
  /// **'Corner Roundness'**
  String get styleThemeRadiusSetting;

  /// No description provided for @styleThemeOpacitySetting.
  ///
  /// In en, this message translates to:
  /// **'Opacity'**
  String get styleThemeOpacitySetting;

  /// No description provided for @styleThemeBlurSetting.
  ///
  /// In en, this message translates to:
  /// **'Blur'**
  String get styleThemeBlurSetting;

  /// No description provided for @styleThemeSpreadSetting.
  ///
  /// In en, this message translates to:
  /// **'Spread'**
  String get styleThemeSpreadSetting;

  /// No description provided for @styleThemeOutlineSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Outline'**
  String get styleThemeOutlineSettingGroup;

  /// No description provided for @styleThemeOutlineWidthSetting.
  ///
  /// In en, this message translates to:
  /// **'Width'**
  String get styleThemeOutlineWidthSetting;

  /// No description provided for @accessibilitySettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get accessibilitySettingGroup;

  /// No description provided for @backupSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backupSettingGroup;

  /// No description provided for @developerOptionsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Developer Options'**
  String get developerOptionsSettingGroup;

  /// No description provided for @showIstantAlarmButtonSetting.
  ///
  /// In en, this message translates to:
  /// **'Show instant alarm button'**
  String get showIstantAlarmButtonSetting;

  /// No description provided for @showIstantTimerButtonSetting.
  ///
  /// In en, this message translates to:
  /// **'Show instant timer button'**
  String get showIstantTimerButtonSetting;

  /// No description provided for @logsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get logsSettingGroup;

  /// No description provided for @maxLogsSetting.
  ///
  /// In en, this message translates to:
  /// **'Max alarm logs'**
  String get maxLogsSetting;

  /// No description provided for @alarmLogSetting.
  ///
  /// In en, this message translates to:
  /// **'Alarm logs'**
  String get alarmLogSetting;

  /// No description provided for @appLogs.
  ///
  /// In en, this message translates to:
  /// **'App logs'**
  String get appLogs;

  /// No description provided for @saveLogs.
  ///
  /// In en, this message translates to:
  /// **'Save logs'**
  String get saveLogs;

  /// No description provided for @showErrorSnackbars.
  ///
  /// In en, this message translates to:
  /// **'Show error snackbars'**
  String get showErrorSnackbars;

  /// No description provided for @clearLogs.
  ///
  /// In en, this message translates to:
  /// **'Clear logs'**
  String get clearLogs;

  /// No description provided for @aboutSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSettingGroup;

  /// No description provided for @restoreSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Restore default values'**
  String get restoreSettingGroup;

  /// No description provided for @resetButton.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetButton;

  /// No description provided for @previewLabel.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get previewLabel;

  /// No description provided for @cardLabel.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get cardLabel;

  /// No description provided for @accentLabel.
  ///
  /// In en, this message translates to:
  /// **'Accent'**
  String get accentLabel;

  /// No description provided for @errorLabel.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorLabel;

  /// No description provided for @displaySettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get displaySettingGroup;

  /// No description provided for @reliabilitySettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Reliability'**
  String get reliabilitySettingGroup;

  /// No description provided for @colorsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get colorsSettingGroup;

  /// No description provided for @styleSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get styleSettingGroup;

  /// No description provided for @useMaterialYouColorSetting.
  ///
  /// In en, this message translates to:
  /// **'Use Material You'**
  String get useMaterialYouColorSetting;

  /// No description provided for @materialBrightnessSetting.
  ///
  /// In en, this message translates to:
  /// **'Brightness'**
  String get materialBrightnessSetting;

  /// No description provided for @materialBrightnessSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get materialBrightnessSystem;

  /// No description provided for @materialBrightnessLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get materialBrightnessLight;

  /// No description provided for @materialBrightnessDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get materialBrightnessDark;

  /// No description provided for @overrideAccentSetting.
  ///
  /// In en, this message translates to:
  /// **'Override Accent Color'**
  String get overrideAccentSetting;

  /// No description provided for @accentColorSetting.
  ///
  /// In en, this message translates to:
  /// **'Accent Color'**
  String get accentColorSetting;

  /// No description provided for @useMaterialStyleSetting.
  ///
  /// In en, this message translates to:
  /// **'Use Material Style'**
  String get useMaterialStyleSetting;

  /// No description provided for @styleThemeSetting.
  ///
  /// In en, this message translates to:
  /// **'Style Theme'**
  String get styleThemeSetting;

  /// No description provided for @systemDarkModeSetting.
  ///
  /// In en, this message translates to:
  /// **'System Dark Mode'**
  String get systemDarkModeSetting;

  /// No description provided for @colorSchemeSetting.
  ///
  /// In en, this message translates to:
  /// **'Color Scheme'**
  String get colorSchemeSetting;

  /// No description provided for @darkColorSchemeSetting.
  ///
  /// In en, this message translates to:
  /// **'Dark Color Scheme'**
  String get darkColorSchemeSetting;

  /// No description provided for @clockSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Clock'**
  String get clockSettingGroup;

  /// No description provided for @timerSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get timerSettingGroup;

  /// No description provided for @stopwatchSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Stopwatch'**
  String get stopwatchSettingGroup;

  /// No description provided for @backupSettingGroupDescription.
  ///
  /// In en, this message translates to:
  /// **'Export or Import your settings locally'**
  String get backupSettingGroupDescription;

  /// No description provided for @alarmWeekdaysSetting.
  ///
  /// In en, this message translates to:
  /// **'Week Days'**
  String get alarmWeekdaysSetting;

  /// No description provided for @alarmDatesSetting.
  ///
  /// In en, this message translates to:
  /// **'Dates'**
  String get alarmDatesSetting;

  /// No description provided for @alarmRangeSetting.
  ///
  /// In en, this message translates to:
  /// **'Date Range'**
  String get alarmRangeSetting;

  /// No description provided for @alarmIntervalSetting.
  ///
  /// In en, this message translates to:
  /// **'Interval'**
  String get alarmIntervalSetting;

  /// No description provided for @alarmIntervalDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get alarmIntervalDaily;

  /// No description provided for @alarmIntervalWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get alarmIntervalWeekly;

  /// No description provided for @alarmDeleteAfterRingingSetting.
  ///
  /// In en, this message translates to:
  /// **'Delete After Dismiss'**
  String get alarmDeleteAfterRingingSetting;

  /// No description provided for @alarmDeleteAfterFinishingSetting.
  ///
  /// In en, this message translates to:
  /// **'Delete After Finishing'**
  String get alarmDeleteAfterFinishingSetting;

  /// No description provided for @cannotDisableAlarmWhileSnoozedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Cannot disable alarm while it is snoozed'**
  String get cannotDisableAlarmWhileSnoozedSnackbar;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select Time'**
  String get selectTime;

  /// No description provided for @timePickerModeButton.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get timePickerModeButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @customizeButton.
  ///
  /// In en, this message translates to:
  /// **'Customize'**
  String get customizeButton;

  /// No description provided for @saveButton.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButton;

  /// No description provided for @labelField.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get labelField;

  /// No description provided for @labelFieldPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Add a label'**
  String get labelFieldPlaceholder;

  /// No description provided for @alarmScheduleSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get alarmScheduleSettingGroup;

  /// No description provided for @scheduleTypeField.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get scheduleTypeField;

  /// No description provided for @scheduleTypeOnce.
  ///
  /// In en, this message translates to:
  /// **'Once'**
  String get scheduleTypeOnce;

  /// No description provided for @scheduleTypeDaily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get scheduleTypeDaily;

  /// No description provided for @scheduleTypeOnceDescription.
  ///
  /// In en, this message translates to:
  /// **'Will ring at the next occurrence of the time'**
  String get scheduleTypeOnceDescription;

  /// No description provided for @scheduleTypeDailyDescription.
  ///
  /// In en, this message translates to:
  /// **'Will ring every day'**
  String get scheduleTypeDailyDescription;

  /// No description provided for @scheduleTypeWeek.
  ///
  /// In en, this message translates to:
  /// **'On Specified Week Days'**
  String get scheduleTypeWeek;

  /// No description provided for @scheduleTypeWeekDescription.
  ///
  /// In en, this message translates to:
  /// **'Will repeat on the specified week days'**
  String get scheduleTypeWeekDescription;

  /// No description provided for @scheduleTypeDate.
  ///
  /// In en, this message translates to:
  /// **'On Specific Dates'**
  String get scheduleTypeDate;

  /// No description provided for @scheduleTypeRange.
  ///
  /// In en, this message translates to:
  /// **'Date Range'**
  String get scheduleTypeRange;

  /// No description provided for @scheduleTypeDateDescription.
  ///
  /// In en, this message translates to:
  /// **'Will repeat on the specified dates'**
  String get scheduleTypeDateDescription;

  /// No description provided for @scheduleTypeRangeDescription.
  ///
  /// In en, this message translates to:
  /// **'Will repeat during the specified date range'**
  String get scheduleTypeRangeDescription;

  /// No description provided for @soundAndVibrationSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Sound and Vibration'**
  String get soundAndVibrationSettingGroup;

  /// No description provided for @soundSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get soundSettingGroup;

  /// No description provided for @settingGroupMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get settingGroupMore;

  /// No description provided for @melodySetting.
  ///
  /// In en, this message translates to:
  /// **'Melody'**
  String get melodySetting;

  /// No description provided for @startMelodyAtRandomPos.
  ///
  /// In en, this message translates to:
  /// **'Random position'**
  String get startMelodyAtRandomPos;

  /// No description provided for @startMelodyAtRandomPosDescription.
  ///
  /// In en, this message translates to:
  /// **'Melody will start at a random position'**
  String get startMelodyAtRandomPosDescription;

  /// No description provided for @vibrationSetting.
  ///
  /// In en, this message translates to:
  /// **'Vibration'**
  String get vibrationSetting;

  /// No description provided for @audioChannelSetting.
  ///
  /// In en, this message translates to:
  /// **'Audio Channel'**
  String get audioChannelSetting;

  /// No description provided for @audioChannelAlarm.
  ///
  /// In en, this message translates to:
  /// **'Alarm'**
  String get audioChannelAlarm;

  /// No description provided for @audioChannelNotification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get audioChannelNotification;

  /// No description provided for @audioChannelRingtone.
  ///
  /// In en, this message translates to:
  /// **'Ringtone'**
  String get audioChannelRingtone;

  /// No description provided for @audioChannelMedia.
  ///
  /// In en, this message translates to:
  /// **'Media'**
  String get audioChannelMedia;

  /// No description provided for @volumeSetting.
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get volumeSetting;

  /// No description provided for @volumeWhileTasks.
  ///
  /// In en, this message translates to:
  /// **'Volume while solving Tasks'**
  String get volumeWhileTasks;

  /// No description provided for @risingVolumeSetting.
  ///
  /// In en, this message translates to:
  /// **'Rising Volume'**
  String get risingVolumeSetting;

  /// No description provided for @timeToFullVolumeSetting.
  ///
  /// In en, this message translates to:
  /// **'Time to Full Volume'**
  String get timeToFullVolumeSetting;

  /// No description provided for @snoozeSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Snooze'**
  String get snoozeSettingGroup;

  /// No description provided for @snoozeEnableSetting.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get snoozeEnableSetting;

  /// No description provided for @snoozeLengthSetting.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get snoozeLengthSetting;

  /// No description provided for @maxSnoozesSetting.
  ///
  /// In en, this message translates to:
  /// **'Max Snoozes'**
  String get maxSnoozesSetting;

  /// No description provided for @whileSnoozedSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'While Snoozed'**
  String get whileSnoozedSettingGroup;

  /// No description provided for @snoozePreventDisablingSetting.
  ///
  /// In en, this message translates to:
  /// **'Prevent Disabling'**
  String get snoozePreventDisablingSetting;

  /// No description provided for @snoozePreventDeletionSetting.
  ///
  /// In en, this message translates to:
  /// **'Prevent Deletion'**
  String get snoozePreventDeletionSetting;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @tasksSetting.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasksSetting;

  /// No description provided for @noItemMessage.
  ///
  /// In en, this message translates to:
  /// **'No {items} added yet'**
  String noItemMessage(Object items);

  /// No description provided for @chooseTaskTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Task to Add'**
  String get chooseTaskTitle;

  /// No description provided for @mathTask.
  ///
  /// In en, this message translates to:
  /// **'Math Problems'**
  String get mathTask;

  /// No description provided for @mathEasyDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy (X + Y)'**
  String get mathEasyDifficulty;

  /// No description provided for @mathMediumDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Medium (X × Y)'**
  String get mathMediumDifficulty;

  /// No description provided for @mathHardDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Hard (X × Y + Z)'**
  String get mathHardDifficulty;

  /// No description provided for @mathVeryHardDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Very Hard (X × Y × Z)'**
  String get mathVeryHardDifficulty;

  /// No description provided for @retypeTask.
  ///
  /// In en, this message translates to:
  /// **'Retype Text'**
  String get retypeTask;

  /// No description provided for @sequenceTask.
  ///
  /// In en, this message translates to:
  /// **'Sequence'**
  String get sequenceTask;

  /// No description provided for @taskTryButton.
  ///
  /// In en, this message translates to:
  /// **'Try Out'**
  String get taskTryButton;

  /// No description provided for @mathTaskDifficultySetting.
  ///
  /// In en, this message translates to:
  /// **'Difficulty'**
  String get mathTaskDifficultySetting;

  /// No description provided for @retypeNumberChars.
  ///
  /// In en, this message translates to:
  /// **'Number of characters'**
  String get retypeNumberChars;

  /// No description provided for @retypeIncludeNumSetting.
  ///
  /// In en, this message translates to:
  /// **'Include numbers'**
  String get retypeIncludeNumSetting;

  /// No description provided for @retypeLowercaseSetting.
  ///
  /// In en, this message translates to:
  /// **'Include lowercase'**
  String get retypeLowercaseSetting;

  /// No description provided for @sequenceLengthSetting.
  ///
  /// In en, this message translates to:
  /// **'Sequence length'**
  String get sequenceLengthSetting;

  /// No description provided for @sequenceGridSizeSetting.
  ///
  /// In en, this message translates to:
  /// **'Grid size'**
  String get sequenceGridSizeSetting;

  /// No description provided for @memoryTask.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get memoryTask;

  /// No description provided for @numberOfPairsSetting.
  ///
  /// In en, this message translates to:
  /// **'Number of pairs'**
  String get numberOfPairsSetting;

  /// No description provided for @numberOfProblemsSetting.
  ///
  /// In en, this message translates to:
  /// **'Number of problems'**
  String get numberOfProblemsSetting;

  /// No description provided for @saveReminderAlert.
  ///
  /// In en, this message translates to:
  /// **'Do you want to leave without saving?'**
  String get saveReminderAlert;

  /// No description provided for @yesButton.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesButton;

  /// No description provided for @noButton.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noButton;

  /// No description provided for @noAlarmMessage.
  ///
  /// In en, this message translates to:
  /// **'No alarms created'**
  String get noAlarmMessage;

  /// No description provided for @noTimerMessage.
  ///
  /// In en, this message translates to:
  /// **'No timers created'**
  String get noTimerMessage;

  /// No description provided for @noTagsMessage.
  ///
  /// In en, this message translates to:
  /// **'No tags created'**
  String get noTagsMessage;

  /// No description provided for @noStopwatchMessage.
  ///
  /// In en, this message translates to:
  /// **'No stopwatches created'**
  String get noStopwatchMessage;

  /// No description provided for @noTaskMessage.
  ///
  /// In en, this message translates to:
  /// **'No tasks created'**
  String get noTaskMessage;

  /// No description provided for @noPresetsMessage.
  ///
  /// In en, this message translates to:
  /// **'No presets created'**
  String get noPresetsMessage;

  /// No description provided for @noLogsMessage.
  ///
  /// In en, this message translates to:
  /// **'No alarm logs'**
  String get noLogsMessage;

  /// No description provided for @deleteButton.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteButton;

  /// No description provided for @duplicateButton.
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get duplicateButton;

  /// No description provided for @skipAlarmButton.
  ///
  /// In en, this message translates to:
  /// **'Skip Next Alarm'**
  String get skipAlarmButton;

  /// No description provided for @cancelSkipAlarmButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel Skip'**
  String get cancelSkipAlarmButton;

  /// No description provided for @dismissAlarmButton.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismissAlarmButton;

  /// No description provided for @allFilter.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allFilter;

  /// No description provided for @dateFilterGroup.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateFilterGroup;

  /// No description provided for @scheduleDateFilterGroup.
  ///
  /// In en, this message translates to:
  /// **'Schedule Date'**
  String get scheduleDateFilterGroup;

  /// No description provided for @logTypeFilterGroup.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get logTypeFilterGroup;

  /// No description provided for @createdDateFilterGroup.
  ///
  /// In en, this message translates to:
  /// **'Created Date'**
  String get createdDateFilterGroup;

  /// No description provided for @todayFilter.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get todayFilter;

  /// No description provided for @tomorrowFilter.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrowFilter;

  /// No description provided for @stateFilterGroup.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get stateFilterGroup;

  /// No description provided for @activeFilter.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeFilter;

  /// No description provided for @inactiveFilter.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactiveFilter;

  /// No description provided for @snoozedFilter.
  ///
  /// In en, this message translates to:
  /// **'Snoozed'**
  String get snoozedFilter;

  /// No description provided for @disabledFilter.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabledFilter;

  /// No description provided for @completedFilter.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completedFilter;

  /// No description provided for @runningTimerFilter.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get runningTimerFilter;

  /// No description provided for @pausedTimerFilter.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get pausedTimerFilter;

  /// No description provided for @stoppedTimerFilter.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get stoppedTimerFilter;

  /// No description provided for @selectionStatus.
  ///
  /// In en, this message translates to:
  /// **'{n} selected'**
  String selectionStatus(Object n);

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @reorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// No description provided for @sortGroup.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sortGroup;

  /// No description provided for @defaultLabel.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultLabel;

  /// No description provided for @remainingTimeDesc.
  ///
  /// In en, this message translates to:
  /// **'Least time left'**
  String get remainingTimeDesc;

  /// No description provided for @remainingTimeAsc.
  ///
  /// In en, this message translates to:
  /// **'Most time left'**
  String get remainingTimeAsc;

  /// No description provided for @durationAsc.
  ///
  /// In en, this message translates to:
  /// **'Shortest'**
  String get durationAsc;

  /// No description provided for @durationDesc.
  ///
  /// In en, this message translates to:
  /// **'Longest'**
  String get durationDesc;

  /// No description provided for @nameAsc.
  ///
  /// In en, this message translates to:
  /// **'Label A-Z'**
  String get nameAsc;

  /// No description provided for @nameDesc.
  ///
  /// In en, this message translates to:
  /// **'Label Z-A'**
  String get nameDesc;

  /// No description provided for @timeOfDayAsc.
  ///
  /// In en, this message translates to:
  /// **'Early hours first'**
  String get timeOfDayAsc;

  /// No description provided for @timeOfDayDesc.
  ///
  /// In en, this message translates to:
  /// **'Late hours first'**
  String get timeOfDayDesc;

  /// No description provided for @filterActions.
  ///
  /// In en, this message translates to:
  /// **'Filter Actions'**
  String get filterActions;

  /// No description provided for @clearFiltersAction.
  ///
  /// In en, this message translates to:
  /// **'Clear all filters'**
  String get clearFiltersAction;

  /// No description provided for @enableAllFilteredAlarmsAction.
  ///
  /// In en, this message translates to:
  /// **'Enable all filtered alarms'**
  String get enableAllFilteredAlarmsAction;

  /// No description provided for @disableAllFilteredAlarmsAction.
  ///
  /// In en, this message translates to:
  /// **'Disable all filtered alarms'**
  String get disableAllFilteredAlarmsAction;

  /// No description provided for @skipAllFilteredAlarmsAction.
  ///
  /// In en, this message translates to:
  /// **'Skip all filtered alarms'**
  String get skipAllFilteredAlarmsAction;

  /// No description provided for @shuffleAlarmMelodiesAction.
  ///
  /// In en, this message translates to:
  /// **'Shuffle melodies for all filtered alarms'**
  String get shuffleAlarmMelodiesAction;

  /// No description provided for @cancelSkipAllFilteredAlarmsAction.
  ///
  /// In en, this message translates to:
  /// **'Cancel skip all filtered alarms'**
  String get cancelSkipAllFilteredAlarmsAction;

  /// No description provided for @deleteAllFilteredAction.
  ///
  /// In en, this message translates to:
  /// **'Delete all filtered items'**
  String get deleteAllFilteredAction;

  /// No description provided for @resetAllFilteredTimersAction.
  ///
  /// In en, this message translates to:
  /// **'Reset all filtered timers'**
  String get resetAllFilteredTimersAction;

  /// No description provided for @playAllFilteredTimersAction.
  ///
  /// In en, this message translates to:
  /// **'Play all filtered timers'**
  String get playAllFilteredTimersAction;

  /// No description provided for @pauseAllFilteredTimersAction.
  ///
  /// In en, this message translates to:
  /// **'Pause all filtered timers'**
  String get pauseAllFilteredTimersAction;

  /// No description provided for @shuffleTimerMelodiesAction.
  ///
  /// In en, this message translates to:
  /// **'Shuffle melodies for all filtered timers'**
  String get shuffleTimerMelodiesAction;

  /// No description provided for @skippingDescriptionSuffix.
  ///
  /// In en, this message translates to:
  /// **'(skipping next occurrence)'**
  String get skippingDescriptionSuffix;

  /// No description provided for @alarmDescriptionSnooze.
  ///
  /// In en, this message translates to:
  /// **'Snoozed until {date}'**
  String alarmDescriptionSnooze(Object date);

  /// No description provided for @alarmDescriptionFinished.
  ///
  /// In en, this message translates to:
  /// **'No future dates'**
  String get alarmDescriptionFinished;

  /// No description provided for @alarmDescriptionNotScheduled.
  ///
  /// In en, this message translates to:
  /// **'Not scheduled'**
  String get alarmDescriptionNotScheduled;

  /// No description provided for @alarmDescriptionToday.
  ///
  /// In en, this message translates to:
  /// **'Just today'**
  String get alarmDescriptionToday;

  /// No description provided for @alarmDescriptionTomorrow.
  ///
  /// In en, this message translates to:
  /// **'Just tomorrow'**
  String get alarmDescriptionTomorrow;

  /// No description provided for @alarmDescriptionEveryDay.
  ///
  /// In en, this message translates to:
  /// **'Every day'**
  String get alarmDescriptionEveryDay;

  /// No description provided for @alarmDescriptionWeekend.
  ///
  /// In en, this message translates to:
  /// **'Every weekend'**
  String get alarmDescriptionWeekend;

  /// No description provided for @stopwatchPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get stopwatchPrevious;

  /// No description provided for @alarmDescriptionWeekday.
  ///
  /// In en, this message translates to:
  /// **'Every weekday'**
  String get alarmDescriptionWeekday;

  /// No description provided for @alarmDescriptionWeekly.
  ///
  /// In en, this message translates to:
  /// **'Every {days}'**
  String alarmDescriptionWeekly(Object days);

  /// No description provided for @stopwatchFastest.
  ///
  /// In en, this message translates to:
  /// **'Fastest'**
  String get stopwatchFastest;

  /// No description provided for @alarmDescriptionDays.
  ///
  /// In en, this message translates to:
  /// **'On {days}'**
  String alarmDescriptionDays(Object days);

  /// No description provided for @alarmDescriptionRange.
  ///
  /// In en, this message translates to:
  /// **'{interval, select, daily{Daily} weekly{Weekly} other{Other}} from {startDate} to {endDate}'**
  String alarmDescriptionRange(
      Object endDate, String interval, Object startDate);

  /// No description provided for @stopwatchSlowest.
  ///
  /// In en, this message translates to:
  /// **'Slowest'**
  String get stopwatchSlowest;

  /// No description provided for @alarmDescriptionDates.
  ///
  /// In en, this message translates to:
  /// **'On {date}{count, plural, =0{} =1{ and 1 other date} other{ and {count} other dates}}'**
  String alarmDescriptionDates(num count, Object date);

  /// No description provided for @stopwatchAverage.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get stopwatchAverage;

  /// No description provided for @defaultSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Default Settings'**
  String get defaultSettingGroup;

  /// No description provided for @alarmsDefaultSettingGroupDescription.
  ///
  /// In en, this message translates to:
  /// **'Set default values for new alarms'**
  String get alarmsDefaultSettingGroupDescription;

  /// No description provided for @timerDefaultSettingGroupDescription.
  ///
  /// In en, this message translates to:
  /// **'Set default values for new timers'**
  String get timerDefaultSettingGroupDescription;

  /// No description provided for @filtersSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filtersSettingGroup;

  /// No description provided for @showFiltersSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Filters'**
  String get showFiltersSetting;

  /// No description provided for @showSortSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Sort'**
  String get showSortSetting;

  /// No description provided for @notificationsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsSettingGroup;

  /// No description provided for @showUpcomingAlarmNotificationSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Upcoming Alarm Notifications'**
  String get showUpcomingAlarmNotificationSetting;

  /// No description provided for @upcomingLeadTimeSetting.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Lead Time'**
  String get upcomingLeadTimeSetting;

  /// No description provided for @showSnoozeNotificationSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Snooze Notifications'**
  String get showSnoozeNotificationSetting;

  /// No description provided for @showNotificationSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Notification'**
  String get showNotificationSetting;

  /// No description provided for @presetsSetting.
  ///
  /// In en, this message translates to:
  /// **'Presets'**
  String get presetsSetting;

  /// No description provided for @newPresetPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'New Preset'**
  String get newPresetPlaceholder;

  /// No description provided for @dismissActionSetting.
  ///
  /// In en, this message translates to:
  /// **'Dismiss Action Type'**
  String get dismissActionSetting;

  /// No description provided for @dismissActionSlide.
  ///
  /// In en, this message translates to:
  /// **'Slide'**
  String get dismissActionSlide;

  /// No description provided for @dismissActionButtons.
  ///
  /// In en, this message translates to:
  /// **'Buttons'**
  String get dismissActionButtons;

  /// No description provided for @dismissActionAreaButtons.
  ///
  /// In en, this message translates to:
  /// **'Area Buttons'**
  String get dismissActionAreaButtons;

  /// No description provided for @stopwatchTimeFormatSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Time Format'**
  String get stopwatchTimeFormatSettingGroup;

  /// No description provided for @stopwatchShowMillisecondsSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Milliseconds'**
  String get stopwatchShowMillisecondsSetting;

  /// No description provided for @comparisonLapBarsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Comparison Lap Bars'**
  String get comparisonLapBarsSettingGroup;

  /// No description provided for @showPreviousLapSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Previous Lap'**
  String get showPreviousLapSetting;

  /// No description provided for @showFastestLapSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Fastest Lap'**
  String get showFastestLapSetting;

  /// No description provided for @showAverageLapSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Average Lap'**
  String get showAverageLapSetting;

  /// No description provided for @showSlowestLapSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Slowest Lap'**
  String get showSlowestLapSetting;

  /// No description provided for @leftHandedSetting.
  ///
  /// In en, this message translates to:
  /// **'Left Handed Mode'**
  String get leftHandedSetting;

  /// No description provided for @exportSettingsSetting.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get exportSettingsSetting;

  /// No description provided for @exportSettingsSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Export settings to a local file'**
  String get exportSettingsSettingDescription;

  /// No description provided for @importSettingsSetting.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get importSettingsSetting;

  /// No description provided for @importSettingsSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Import settings from a local file'**
  String get importSettingsSettingDescription;

  /// No description provided for @versionLabel.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get versionLabel;

  /// No description provided for @packageNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Package name'**
  String get packageNameLabel;

  /// No description provided for @licenseLabel.
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get licenseLabel;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @viewOnGithubLabel.
  ///
  /// In en, this message translates to:
  /// **'View on GitHub'**
  String get viewOnGithubLabel;

  /// No description provided for @openSourceLicensesSetting.
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get openSourceLicensesSetting;

  /// No description provided for @contributorsSetting.
  ///
  /// In en, this message translates to:
  /// **'Contributors'**
  String get contributorsSetting;

  /// No description provided for @donorsSetting.
  ///
  /// In en, this message translates to:
  /// **'Donors'**
  String get donorsSetting;

  /// No description provided for @donateButton.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get donateButton;

  /// No description provided for @addLengthSetting.
  ///
  /// In en, this message translates to:
  /// **'Add Length'**
  String get addLengthSetting;

  /// No description provided for @relativeTime.
  ///
  /// In en, this message translates to:
  /// **'{hours}h {relative, select, ahead{ahead} behind{behind} other{Other}}'**
  String relativeTime(Object hours, String relative);

  /// No description provided for @sameTime.
  ///
  /// In en, this message translates to:
  /// **'Same time'**
  String get sameTime;

  /// No description provided for @searchSettingPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search for a setting'**
  String get searchSettingPlaceholder;

  /// No description provided for @searchCityPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search for a city'**
  String get searchCityPlaceholder;

  /// No description provided for @cityAlreadyInFavorites.
  ///
  /// In en, this message translates to:
  /// **'This city is already in your favorites'**
  String get cityAlreadyInFavorites;

  /// No description provided for @durationPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Duration'**
  String get durationPickerTitle;

  /// No description provided for @editButton.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editButton;

  /// No description provided for @noLapsMessage.
  ///
  /// In en, this message translates to:
  /// **'No laps yet'**
  String get noLapsMessage;

  /// No description provided for @elapsedTime.
  ///
  /// In en, this message translates to:
  /// **'Elapsed Time'**
  String get elapsedTime;

  /// No description provided for @mondayFull.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get mondayFull;

  /// No description provided for @tuesdayFull.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesdayFull;

  /// No description provided for @wednesdayFull.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesdayFull;

  /// No description provided for @thursdayFull.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursdayFull;

  /// No description provided for @fridayFull.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get fridayFull;

  /// No description provided for @saturdayFull.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturdayFull;

  /// No description provided for @sundayFull.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sundayFull;

  /// No description provided for @mondayShort.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mondayShort;

  /// No description provided for @tuesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get tuesdayShort;

  /// No description provided for @wednesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wednesdayShort;

  /// No description provided for @thursdayShort.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get thursdayShort;

  /// No description provided for @fridayShort.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fridayShort;

  /// No description provided for @saturdayShort.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get saturdayShort;

  /// No description provided for @sundayShort.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sundayShort;

  /// No description provided for @mondayLetter.
  ///
  /// In en, this message translates to:
  /// **'M'**
  String get mondayLetter;

  /// No description provided for @tuesdayLetter.
  ///
  /// In en, this message translates to:
  /// **'T'**
  String get tuesdayLetter;

  /// No description provided for @wednesdayLetter.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get wednesdayLetter;

  /// No description provided for @thursdayLetter.
  ///
  /// In en, this message translates to:
  /// **'T'**
  String get thursdayLetter;

  /// No description provided for @fridayLetter.
  ///
  /// In en, this message translates to:
  /// **'F'**
  String get fridayLetter;

  /// No description provided for @saturdayLetter.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get saturdayLetter;

  /// No description provided for @sundayLetter.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get sundayLetter;

  /// No description provided for @donateDescription.
  ///
  /// In en, this message translates to:
  /// **'Donate to support the development of the app'**
  String get donateDescription;

  /// No description provided for @donorsDescription.
  ///
  /// In en, this message translates to:
  /// **'Our generous patreons'**
  String get donorsDescription;

  /// No description provided for @contributorsDescription.
  ///
  /// In en, this message translates to:
  /// **'People who make this app possible'**
  String get contributorsDescription;

  /// No description provided for @widgetsSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Widgets'**
  String get widgetsSettingGroup;

  /// No description provided for @digitalClockSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Digital Clock'**
  String get digitalClockSettingGroup;

  /// No description provided for @layoutSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get layoutSettingGroup;

  /// No description provided for @textSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get textSettingGroup;

  /// No description provided for @showDateSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Date'**
  String get showDateSetting;

  /// No description provided for @showLabelSetting.
  ///
  /// In en, this message translates to:
  /// **'Show Label'**
  String get showLabelSetting;

  /// No description provided for @showStateSetting.
  ///
  /// In en, this message translates to:
  /// **'Show State'**
  String get showStateSetting;

  /// No description provided for @timerColorSetting.
  ///
  /// In en, this message translates to:
  /// **'Timer Color'**
  String get timerColorSetting;

  /// No description provided for @labelColorSetting.
  ///
  /// In en, this message translates to:
  /// **'Label Color'**
  String get labelColorSetting;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @horizontalAlignmentSetting.
  ///
  /// In en, this message translates to:
  /// **'Horizontal Alignment'**
  String get horizontalAlignmentSetting;

  /// No description provided for @verticalAlignmentSetting.
  ///
  /// In en, this message translates to:
  /// **'Vertical Alignment'**
  String get verticalAlignmentSetting;

  /// No description provided for @alignmentTop.
  ///
  /// In en, this message translates to:
  /// **'Top'**
  String get alignmentTop;

  /// No description provided for @alignmentBottom.
  ///
  /// In en, this message translates to:
  /// **'Bottom'**
  String get alignmentBottom;

  /// No description provided for @alignmentLeft.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get alignmentLeft;

  /// No description provided for @alignmentCenter.
  ///
  /// In en, this message translates to:
  /// **'Center'**
  String get alignmentCenter;

  /// No description provided for @alignmentRight.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get alignmentRight;

  /// No description provided for @alignmentJustify.
  ///
  /// In en, this message translates to:
  /// **'Justify'**
  String get alignmentJustify;

  /// No description provided for @fontWeightSetting.
  ///
  /// In en, this message translates to:
  /// **'Font Weight'**
  String get fontWeightSetting;

  /// No description provided for @dateSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateSettingGroup;

  /// No description provided for @timeSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeSettingGroup;

  /// No description provided for @sizeSetting.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get sizeSetting;

  /// No description provided for @defaultPageSetting.
  ///
  /// In en, this message translates to:
  /// **'Default Tab'**
  String get defaultPageSetting;

  /// No description provided for @showMeridiemSetting.
  ///
  /// In en, this message translates to:
  /// **'Show AM/PM'**
  String get showMeridiemSetting;

  /// No description provided for @editPresetsTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Presets'**
  String get editPresetsTitle;

  /// No description provided for @firstDayOfWeekSetting.
  ///
  /// In en, this message translates to:
  /// **'First Day of Week'**
  String get firstDayOfWeekSetting;

  /// No description provided for @translateLink.
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translateLink;

  /// No description provided for @translateDescription.
  ///
  /// In en, this message translates to:
  /// **'Help translate the app'**
  String get translateDescription;

  /// No description provided for @separatorSetting.
  ///
  /// In en, this message translates to:
  /// **'Separator'**
  String get separatorSetting;

  /// No description provided for @editTagLabel.
  ///
  /// In en, this message translates to:
  /// **'Edit Tag'**
  String get editTagLabel;

  /// No description provided for @tagNamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Tag name'**
  String get tagNamePlaceholder;

  /// No description provided for @hoursString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 hour} other{{count} hours}}'**
  String hoursString(num count);

  /// No description provided for @minutesString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 minute} other{{count} minutes}}'**
  String minutesString(num count);

  /// No description provided for @secondsString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 second} other{{count} seconds}}'**
  String secondsString(num count);

  /// No description provided for @daysString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 day} other{{count} days}}'**
  String daysString(num count);

  /// No description provided for @weeksString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 week} other{{count} weeks}}'**
  String weeksString(num count);

  /// No description provided for @monthsString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 month} other{{count} months}}'**
  String monthsString(num count);

  /// No description provided for @yearsString.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{1 year} other{{count} years}}'**
  String yearsString(num count);

  /// No description provided for @lessThanOneMinute.
  ///
  /// In en, this message translates to:
  /// **'less than 1 minute'**
  String get lessThanOneMinute;

  /// No description provided for @alarmRingInMessage.
  ///
  /// In en, this message translates to:
  /// **'Alarm will ring in {duration}'**
  String alarmRingInMessage(Object duration);

  /// No description provided for @nextAlarmIn.
  ///
  /// In en, this message translates to:
  /// **'Next: {duration}'**
  String nextAlarmIn(Object duration);

  /// No description provided for @combinedTime.
  ///
  /// In en, this message translates to:
  /// **'{hours} and {minutes}'**
  String combinedTime(Object hours, Object minutes);

  /// No description provided for @shortHoursString.
  ///
  /// In en, this message translates to:
  /// **'{hours}h'**
  String shortHoursString(Object hours);

  /// No description provided for @shortMinutesString.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m'**
  String shortMinutesString(Object minutes);

  /// No description provided for @shortSecondsString.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String shortSecondsString(Object seconds);

  /// No description provided for @showNextAlarm.
  ///
  /// In en, this message translates to:
  /// **'Show Next Alarm'**
  String get showNextAlarm;

  /// No description provided for @showForegroundNotification.
  ///
  /// In en, this message translates to:
  /// **'Show Foreground Notification'**
  String get showForegroundNotification;

  /// No description provided for @showForegroundNotificationDescription.
  ///
  /// In en, this message translates to:
  /// **'Show a persistent notification to keep app alive'**
  String get showForegroundNotificationDescription;

  /// No description provided for @useBackgroundServiceSetting.
  ///
  /// In en, this message translates to:
  /// **'Use Background Service'**
  String get useBackgroundServiceSetting;

  /// No description provided for @useBackgroundServiceSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Might help keep the app alive in the background'**
  String get useBackgroundServiceSettingDescription;

  /// No description provided for @notificationPermissionDescription.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications to be showed'**
  String get notificationPermissionDescription;

  /// No description provided for @extraAnimationSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Show animations that are not polished and might cause frame drops in low-end devices'**
  String get extraAnimationSettingDescription;

  /// No description provided for @clockStyleSettingGroup.
  ///
  /// In en, this message translates to:
  /// **'Clock Style'**
  String get clockStyleSettingGroup;

  /// No description provided for @clockTypeSetting.
  ///
  /// In en, this message translates to:
  /// **'Clock type'**
  String get clockTypeSetting;

  /// No description provided for @analogClock.
  ///
  /// In en, this message translates to:
  /// **'Analog'**
  String get analogClock;

  /// No description provided for @digitalClock.
  ///
  /// In en, this message translates to:
  /// **'Digital'**
  String get digitalClock;

  /// No description provided for @showClockTicksSetting.
  ///
  /// In en, this message translates to:
  /// **'Show ticks'**
  String get showClockTicksSetting;

  /// No description provided for @majorTicks.
  ///
  /// In en, this message translates to:
  /// **'Major ticks only'**
  String get majorTicks;

  /// No description provided for @allTicks.
  ///
  /// In en, this message translates to:
  /// **'All ticks'**
  String get allTicks;

  /// No description provided for @showNumbersSetting.
  ///
  /// In en, this message translates to:
  /// **'Show numbers'**
  String get showNumbersSetting;

  /// No description provided for @quarterNumbers.
  ///
  /// In en, this message translates to:
  /// **'Quarter numbers only'**
  String get quarterNumbers;

  /// No description provided for @allNumbers.
  ///
  /// In en, this message translates to:
  /// **'All numbers'**
  String get allNumbers;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @numeralTypeSetting.
  ///
  /// In en, this message translates to:
  /// **'Numeral type'**
  String get numeralTypeSetting;

  /// No description provided for @romanNumeral.
  ///
  /// In en, this message translates to:
  /// **'Roman'**
  String get romanNumeral;

  /// No description provided for @arabicNumeral.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabicNumeral;

  /// No description provided for @showDigitalClock.
  ///
  /// In en, this message translates to:
  /// **'Show digital clock'**
  String get showDigitalClock;

  /// No description provided for @backgroundServiceIntervalSetting.
  ///
  /// In en, this message translates to:
  /// **'Background service interval'**
  String get backgroundServiceIntervalSetting;

  /// No description provided for @backgroundServiceIntervalSettingDescription.
  ///
  /// In en, this message translates to:
  /// **'Lower interval will help keep the app alive, at the cost of some battery life'**
  String get backgroundServiceIntervalSettingDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'bn',
        'cs',
        'de',
        'en',
        'es',
        'fa',
        'fr',
        'hu',
        'it',
        'ko',
        'nb',
        'nl',
        'pl',
        'pt',
        'ru',
        'sr',
        'ta',
        'tr',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'cs':
      return AppLocalizationsCs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'hu':
      return AppLocalizationsHu();
    case 'it':
      return AppLocalizationsIt();
    case 'ko':
      return AppLocalizationsKo();
    case 'nb':
      return AppLocalizationsNb();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sr':
      return AppLocalizationsSr();
    case 'ta':
      return AppLocalizationsTa();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
