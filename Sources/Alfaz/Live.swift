import Dependencies

extension Alfaz: DependencyKey {
    public static var liveValue = Self(
        fetch: { return "data" }
    )
}
