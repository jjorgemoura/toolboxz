import Combine
import Dependencies
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

//final class AppDelegate: NSObject, UIApplicationDelegate {
//    let store = Store(
//        initialState: AppReducer.State(),
//        reducer: AppReducer().transformDependency(\.self) {
//            $0.audioPlayer = .liveValue
//            $0.database = .live(
//                path: FileManager.default
//                    .urls(for: .documentDirectory, in: .userDomainMask)
//                    .first!
//                    .appendingPathComponent("co.pointfree.Isowords")
//                    .appendingPathComponent("Isowords.sqlite3")
//            )
//            $0.serverConfig = .live(apiClient: $0.apiClient, build: $0.build)
//        }
//    )
