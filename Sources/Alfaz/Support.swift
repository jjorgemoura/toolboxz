public extension Alfaz {

    static var noop = Self(
        fetch: { return "data" }
    )
}
