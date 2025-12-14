
package com.vicolo.chrono

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.graphics.Color
import android.net.Uri
import android.util.Log
import android.view.View
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider

class TimerWidgetProvider : HomeWidgetProvider() {

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences,
    ) {
        Log.d("CHRONO", "Updating Timer Widget")

        appWidgetIds.forEach { appWidgetId ->
            val views =
                RemoteViews(context.packageName, R.layout.timer_widget).apply {
                    // Get timer data from shared preferences
                    val timerLabel = widgetData.getString("timerLabel", "Timer")
                    val timerTime = widgetData.getString("timerTime", "00:00:00")
                    val timerState = widgetData.getString("timerState", "Stopped")
                    val timerColor = widgetData.getString("timerColor", "#FFFFFF")
                    val labelColor = widgetData.getString("labelColor", "#FFFFFF")
                    val showLabel = widgetData.getBoolean("showLabel", true)
                    val showState = widgetData.getBoolean("showState", true)

                    // Set the timer label
                    setTextViewText(R.id.timer_label, timerLabel)
                    setViewVisibility(R.id.timer_label, if (showLabel) View.VISIBLE else View.GONE)
                    setInt(R.id.timer_label, "setTextColor", Color.parseColor(labelColor))

                    // Set the timer time
                    setTextViewText(R.id.timer_time, timerTime)
                    setInt(R.id.timer_time, "setTextColor", Color.parseColor(timerColor))

                    // Set the timer state
                    setTextViewText(R.id.timer_state, timerState)
                    setViewVisibility(R.id.timer_state, if (showState) View.VISIBLE else View.GONE)
                    setInt(R.id.timer_state, "setTextColor", Color.parseColor(labelColor))

                    // Open App on Widget Click
                    val pendingIntentWithData =
                        HomeWidgetLaunchIntent.getActivity(
                            context,
                            MainActivity::class.java,
                            Uri.parse("chrono://timerClicked"),
                        )
                    setOnClickPendingIntent(R.id.timer_holder, pendingIntentWithData)
                }

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}
