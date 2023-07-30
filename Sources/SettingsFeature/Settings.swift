import ComposableArchitecture
import Foundation
import Tagged

public struct Settings: ReducerProtocol {
    public struct State: Equatable {
        var sections: IdentifiedArrayOf<SettingsSection.State>
    }

    public enum Action: Equatable {
        case didAppear
        case section(Tagged<SettingsSection, String>, SettingsSection.Action)
    }

    public var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .didAppear:
                    .none
            case .section(_, _):
                    .none
            }
        }
        .forEach(\.sections, action: /Action.section) {
            SettingsSection()
        }
    }
}

//extension Settings.State {
//    static var standard: Self {
//        let item1 = SettingItem(identifier: "item_1", title: "dfgdsfsdf")
//        let item2 = SettingItem(identifier: "item_2", title: "dfgdsfsdf sdasdasd")
//        let item3 = SettingItem(identifier: "item_3", title: "fghgf")
//
//        let section2 = SettingSection(identifier: "section_1", header: "header 1", items: [item1, item2], footer: "footer 1")
//        let section1 = SettingSection(identifier: "section_2", header: "header 2", items: [item3], footer: "footer 2")
//
//        return Self(items: [section1, section2])
//    }
//}
