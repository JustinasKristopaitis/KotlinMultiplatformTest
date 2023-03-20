package co.touchlab.dogotracker

class AppAnalytics internal constructor() {
    
    fun appStarted() {
        sendEvent("appStarted", parameters = emptyMap())
    }


    /**
     * Tracks the rating of a trick.
     *
     * @param trickId The ID of the trick being rated.
     * @param rating The rating value, from 1 to 5.
     */
    fun trackTrickRating(trickId: String, rating: Int) {
   sendEvent(
       "trick_rated",
       parameters = mapOf(
            "trick_id" to trickId,
            "rating" to rating
        )
   )
   }
}

data class AppEvent(
    val name: TrackingEventName,
    val parameters: Map<String, Any>?
)

data class TrackingEventName(val rawValue: String) {
    override fun equals(other: Any?): Boolean {
        return other is TrackingEventName && other.rawValue == rawValue
    }
}

object TrackingEventNames {
    val trickRated = TrackingEventName("trick_rated")
}

object AppEvents {
    fun trickRated(trickId: String, rating: Int): AppEvent {
        return AppEvent(
            name = TrackingEventNames.trickRated,
            parameters = mapOf(
                "trick_id" to trickId,
                "rating" to rating
            )
        )
    }
}


