import ComposableArchitecture
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
    public var boolWithKey: (String) -> Bool
    public var dataWithKey: (String) -> Data?
    public var doubleWithKey: (String) -> Double
    public var integerWithKey: (String) -> Int
    public var remove: (String) -> Effect<Never, Never>
    public var persistBool: (Bool, String) -> Effect<Never, Never>
    public var persistData: (Data?, String) -> Effect<Never, Never>
    public var persistDouble: (Double, String) -> Effect<Never, Never>
    public var persistInteger: (Int, String) -> Effect<Never, Never>
}
