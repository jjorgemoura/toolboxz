public extension Gavetaz {
    /// The `noop` implementation of the Gavetaz API.
    ///
    /// - Returns: Returns a non operational instance of `Gavetaz`. This instance doesn't rely on an instance `UserDefaults`, thus, returns default values and all the write methods do nothing.
    static let noop = Self(
        boolWithKey: { _ in false },
        dataWithKey: { _ in nil },
        doubleWithKey: { _ in 0 },
        integerWithKey: { _ in 0 },
        remove: { _ in .none },
        persistBool: { _, _ in .none },
        persistData: { _, _ in .none },
        persistDouble: { _, _ in .none },
        persistInteger: { _, _ in .none }
    )
}
