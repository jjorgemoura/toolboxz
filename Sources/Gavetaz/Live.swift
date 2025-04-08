import Dependencies
import Foundation

extension Gavetaz {
//    public static var liveValue: Gavetaz = .live(userDefaults: UserDefaults.standard)
//    public static var liveValue: Self = {
//        let userDefaults = UserDefaults.standard
//
//        Self(
//            boolWithKey: userDefaults.bool(forKey:),
//            dataWithKey: userDefaults.data(forKey:),
//            doubleWithKey: userDefaults.double(forKey:),
//            integerWithKey: userDefaults.integer(forKey:),
//            remove: { userDefaults.removeObject(forKey: $0) },
//            persistBool: { userDefaults.set($0, forKey: $1) },
//            persistData: { userDefaults.set($0, forKey: $1) },
//            persistDouble: { userDefaults.set($0, forKey: $1) },
//            persistInteger: { userDefaults.set($0, forKey: $1) }
//        )
//    }()

    /// The `live` implementation of the Gavetaz API.
    ///
    /// - Parameter userDefaults: A `UserDefaults` instance used to store the data.
    ///
    /// - Returns: Returns an instance of `Gavetaz`.
//    @Sendable public static func live(userDefaults: UserDefaults) -> Self {
//        Self(
//            boolWithKey: userDefaults.bool(forKey:),
//            dataWithKey: userDefaults.data(forKey:),
//            doubleWithKey: userDefaults.double(forKey:),
//            integerWithKey: userDefaults.integer(forKey:),
//            remove: { userDefaults.removeObject(forKey: $0) },
//            persistBool: { userDefaults.set($0, forKey: $1) },
//            persistData: { userDefaults.set($0, forKey: $1) },
//            persistDouble: { userDefaults.set($0, forKey: $1) },
//            persistInteger: { userDefaults.set($0, forKey: $1) }
//        )
//    }

//    public static let liveValue: Self = {
//        let defaults = { UserDefaults(suiteName: "group.isowords")! }
//        return Self(
//            boolWithKey: { defaults().bool(forKey: $0) },
//            dataWithKey: { defaults().data(forKey: $0) },
//            doubleWithKey: { defaults().double(forKey: $0) },
//            integerWithKey: { defaults().integer(forKey: $0) },
//            remove: { defaults().removeObject(forKey: $0) },
//            persistBool: { defaults().set($0, forKey: $1) },
//            persistData: { defaults().set($0, forKey: $1) },
//            persistDouble: { defaults().set($0, forKey: $1) },
//            persistInteger: { defaults().set($0, forKey: $1) }
//        )
//    }()
}
