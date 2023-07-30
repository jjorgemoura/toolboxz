import Foundation

public extension Gavetaz {
    /// The `live` implementation of the Gavetaz API.
    ///
    /// - Parameter userDefaults: A `UserDefaults` instance used to store the data.
    ///
    /// - Returns: Returns an instance of `Gavetaz`.
    static func live(userDefaults: UserDefaults) -> Self {
        Self(
            boolWithKey: userDefaults.bool(forKey:),
            dataWithKey: userDefaults.data(forKey:),
            doubleWithKey: userDefaults.double(forKey:),
            integerWithKey: userDefaults.integer(forKey:)
//            remove: { key in
//                .fireAndForget {
//                    userDefaults.removeObject(forKey: key)
//                }
//            },
//            persistBool: { value, key in
//                .fireAndForget {
//                    userDefaults.set(value, forKey: key)
//                }
//            },
//            persistData: { data, key in
//                .fireAndForget {
//                    userDefaults.set(data, forKey: key)
//                }
//            },
//            persistDouble: { value, key in
//                .fireAndForget {
//                    userDefaults.set(value, forKey: key)
//                }
//            },
//            persistInteger: { value, key in
//                .fireAndForget {
//                    userDefaults.set(value, forKey: key)
//                }
//            }
        )
    }
}
