extension Defectz {
    public static var console = Self(
        logError: { error in print("Event error -> \(error)") },
        logEvent: { event in print("Event -> \(event)") }
    )

    public static var noop = Self(
        logError: { _ in },
        logEvent: { _ in }
    )
}
