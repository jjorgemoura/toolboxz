import ComposableArchitecture
import Foundation
import Tagged

public struct SettingItem: ReducerProtocol {
    public struct State: Equatable, Identifiable {
        var identifier: Tagged<SettingItem, String>
        let title: String

        public var id: Tagged<SettingItem, String> {
            self.identifier
        }
    }

    public enum Action: Equatable {
        case didAppear
    }

    public func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .didAppear:
                .none
        }
    }
}
