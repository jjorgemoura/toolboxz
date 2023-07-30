import Dependencies
import XCTestDynamicOverlay

extension DependencyValues {
    public var alfaz: Alfaz {
        get { self[Alfaz.self] }
        set { self[Alfaz.self] = newValue}
    }
}

extension Alfaz: TestDependencyKey {
    static public var previewValue = Self.someData

    static public var testValue = Self(
        fetch: unimplemented("\(Self.self).fetch")
    )
}

extension Alfaz {
    static var someData = Self(
        fetch: { "some data" }
    )

    static var emptyData = Self(
        fetch: { "" }
    )
}
