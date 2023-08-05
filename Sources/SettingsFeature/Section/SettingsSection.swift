import ComposableArchitecture
import Foundation
import Tagged

public struct SettingsSection: Reducer {
    public struct State: Equatable, Identifiable {
        let identifier: Tagged<SettingsSection, String>
        let header: String
        var items: IdentifiedArrayOf<SettingsItem.State>
        let footer: String

        public var id: Tagged<SettingsSection, String> {
            self.identifier
        }

        public init(identifier: Tagged<SettingsSection, String>, header: String, items: IdentifiedArrayOf<SettingsItem.State>, footer: String) {
            self.identifier = identifier
            self.header = header
            self.items = items
            self.footer = footer
        }
    }

    public enum Action: Equatable {
        case item(Tagged<SettingsItem, String>, SettingsItem.Action)
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .item(_, _):
                .none
            }
        }
        .forEach(\.items, action: /Action.item) {
            SettingsItem()
        }
    }
}
