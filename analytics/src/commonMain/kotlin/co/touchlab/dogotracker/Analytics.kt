package co.touchlab.dogotracker

import co.touchlab.stately.concurrency.AtomicReference

interface Analytics {
    fun sendEvent(eventName: String, parameters: Map<String, Any>)
}

fun initAnalytics(analytics: Analytics): AnalyticsHandle {
    if (!AnalyticsHandler.analyticsAtom.compareAndSet(null, analytics)) {
        throw IllegalStateException("Analytics can only be set once")
    }

    return AnalyticsHandle(
        appAnalytics = AppAnalytics()
    )

}

data class AnalyticsHandle(
    val appAnalytics: AppAnalytics
)

internal fun sendEvent(name: String, parameters: Map<String, Any>) {
    AnalyticsHandler.analyticsAtom.get()!!.sendEvent(name, parameters)
}

internal object AnalyticsHandler {
    val analyticsAtom: AtomicReference<Analytics?> = AtomicReference(null)
}