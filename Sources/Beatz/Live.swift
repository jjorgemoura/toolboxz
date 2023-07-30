import Combine
import Network

extension Beatz {
    public static func live(queue: DispatchQueue) -> Self {
        let subject = PassthroughSubject<NWPath, Never>()
        let monitor = NWPathMonitor()
        monitor.pathUpdateHandler = subject.send

        return Self(
            networkPathPublisher:
                subject.handleEvents(
                    receiveSubscription: { _ in monitor.start(queue: queue) },
                    receiveCancel: monitor.cancel
                )
                .map(NetworkPath.init(rawValue:))
                .eraseToAnyPublisher()
        )
    }
}
