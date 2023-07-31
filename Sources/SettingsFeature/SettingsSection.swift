import ComposableArchitecture
import Foundation
import Tagged

public struct SettingsSection: Reducer {
    public struct State: Equatable, Identifiable {
        let identifier: Tagged<SettingsSection, String>
        let header: String
        var items: IdentifiedArrayOf<SettingItem.State>
        let footer: String

        public var id: Tagged<SettingsSection, String> {
            self.identifier
        }
    }

    public enum Action: Equatable {
        case item(Tagged<SettingItem, String>, SettingItem.Action)
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .item(_, _):
                .none
            }
        }
        .forEach(\.items, action: /Action.item) {
            SettingItem()
        }
    }
}
