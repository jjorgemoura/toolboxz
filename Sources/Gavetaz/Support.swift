import Dependencies
import XCTestDynamicOverlay

extension Gavetaz: TestDependencyKey {
//    public static let previewValue = Self.stub

    public static let testValue = Self(
        boolWithKey: unimplemented("\(Self.self).boolForKey", placeholder: false),
        dataWithKey: unimplemented("\(Self.self).dataForKey", placeholder: nil),
        doubleWithKey: unimplemented("\(Self.self).doubleForKey", placeholder: 0),
        integerWithKey: unimplemented("\(Self.self).integerForKey", placeholder: 0),
        remove: unimplemented("\(Self.self).remove"),
        persistBool: unimplemented("\(Self.self).setBool"),
        persistData: unimplemented("\(Self.self).setData"),
        persistDouble: unimplemented("\(Self.self).setDouble"),
        persistInteger: unimplemented("\(Self.self).setInteger")
    )
//
//    /// The `noop` implementation of the Gavetaz API.
//    ///
//    /// - Returns: Returns a non operational instance of `Gavetaz`.
//    /// This instance doesn't rely on an instance `UserDefaults`, thus, returns default values and all the write methods do nothing.
//    public static let noop = Self(
//        boolWithKey: { _ in false },
//        dataWithKey: { _ in nil },
//        doubleWithKey: { _ in 0 },
//        integerWithKey: { _ in 0 },
//        remove: { _ in },
//        persistBool: { _, _ in },
//        persistData: { _, _ in },
//        persistDouble: { _, _ in },
//        persistInteger: { _, _ in }
//    )
//
//    public static let stub = Self(
//        boolWithKey: { _ in false },
//        dataWithKey: { _ in nil },
//        doubleWithKey: { _ in 0 },
//        integerWithKey: { _ in 0 },
//        remove: { _ in },
//        persistBool: { _, _ in },
//        persistData: { _, _ in },
//        persistDouble: { _, _ in },
//        persistInteger: { _, _ in }
//    )
}
