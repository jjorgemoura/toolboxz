import Dependencies
import Foundation

/// This API allow us to read and write data to/from `UserDefaults`.
///
/// It has a simple API, covering the basic and common use cases.
///
/// It has four read methods to read different data types, such as:
///
/// - bool
/// - data
/// - double
/// - integer
///
/// These read methods are paired with the equivalente write methods.
///
/// There is one extra method, that allows to remove a specific key, called `remove(:)`
///
/// All write methods are asynchronous, meaning, all of then return an effect, of type: `Effect`.
public struct Gavetaz {
    public var boolWithKey: @Sendable (String) -> Bool
    public var dataWithKey: @Sendable (String) -> Data?
    public var doubleWithKey: @Sendable (String) -> Double
    public var integerWithKey: @Sendable (String) -> Int
    public var remove: @Sendable (String) async -> Void
    public var persistBool: @Sendable (Bool, String) async -> Void
    public var persistData: @Sendable (Data?, String) async -> Void
    public var persistDouble: @Sendable (Double, String) async -> Void
    public var persistInteger: @Sendable (Int, String) async -> Void
}

//public typealias GavetazKey = String

extension DependencyValues {
    public var userDefaults: Gavetaz {
        get { self[Gavetaz.self] }
        set { self[Gavetaz.self] = newValue }
    }
}
