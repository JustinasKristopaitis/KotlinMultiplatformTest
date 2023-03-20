package co.touchlab.dogotracker

fun startSDK(analytics: Analytics): SDKHandle {
    val analyticsHandle = initAnalytics(analytics)
    return SDKHandle(
        appAnalytics = analyticsHandle.appAnalytics
    )
}