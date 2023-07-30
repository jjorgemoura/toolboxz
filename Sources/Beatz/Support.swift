import Combine
import Dependencies
import Foundation
import Network
import XCTestDynamicOverlay

extension DependencyValues {
    public var beatz: Beatz {
        get { self[Beatz.self] }
        set { self[Beatz.self] = newValue }
    }
}

extension Beatz: TestDependencyKey {
    public static var previewValue = Self.satisfied

    public static var testValue = Self(
        networkPathPublisher: unimplemented("\(Self.self).networkPathPublisher")
    )
}

extension Beatz {
    public static let satisfied = Self(
        networkPathPublisher: Just(NetworkPath(status: .satisfied))
            .eraseToAnyPublisher()
    )

    public static let unsatisfied = Self(
        networkPathPublisher: Just(NetworkPath(status: .unsatisfied))
            .eraseToAnyPublisher()
    )

    public static let flakey = Self(
        networkPathPublisher: Timer.publish(every: 2, on: .main, in: .default)
            .autoconnect()
            .scan(.satisfied) { status, _ in
                status == .satisfied ? .unsatisfied : .satisfied
            }
            .map { NetworkPath(status: $0) }
            .eraseToAnyPublisher()
    )
}
