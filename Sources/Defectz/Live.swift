extension Defectz {
    public static var live = Self(
        logError: { _ in fatalError("WebService not implemented!") },
        logEvent: { _ in fatalError("WebService not implemented!") }
    )
}
