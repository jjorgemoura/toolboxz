import Combine
import Network

public struct Beatz {
    public var networkPathPublisher: AnyPublisher<NetworkPath, Never>

    public init( networkPathPublisher: AnyPublisher<NetworkPath, Never>) {
        self.networkPathPublisher = networkPathPublisher
    }
}

public struct NetworkPath {
    public var status: NWPath.Status

    public init(status: NWPath.Status) {
        self.status = status
    }

    public init(rawValue: NWPath) {
        self.status = rawValue.status
    }
}
