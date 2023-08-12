import Foundation

public struct BuildVersion {
    public var buildNumber: () -> Int
    public var version: () -> String
    public var isTestBuild: () -> Bool

    public init(buildNumber: @escaping () -> Int, version: @escaping () -> String, isTestBuild: @escaping () -> Bool) {
        self.buildNumber = buildNumber
        self.version = version
        self.isTestBuild = isTestBuild
    }

    public static let live = Self(
        buildNumber: { (Bundle.main.infoDictionary?["CFBundleVersion"] as? String).flatMap(Int.init) ?? 0 },
        version: { Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "" },
        isTestBuild: { false }
    )

    public static let noop = Self(
        buildNumber: { 0 },
        version: { "?.?.?" },
        isTestBuild: { true }
    )
}
