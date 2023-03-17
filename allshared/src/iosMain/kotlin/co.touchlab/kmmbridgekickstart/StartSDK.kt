package co.touchlab.kmmbridgekickstart

fun startSDK(analytics: Analytics): SDKHandle {
    val analyticsHandle = initAnalytics(analytics)
    return SDKHandle(
        appAnalytics = analyticsHandle.appAnalytics
    )
}