public extension Defectz {

    static var console = Self(
        logError: { error in print("Event error -> \(error)") },
        logEvent: { event in print("Event -> \(event)") }
    )

    static var noop = Self(
        logError: { _ in },
        logEvent: { _ in }
    )
}
