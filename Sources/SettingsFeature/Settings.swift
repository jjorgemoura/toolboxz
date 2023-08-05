import ComposableArchitecture
import Foundation
import Tagged

public struct Settings: Reducer {
    public struct State: Equatable {
        var sections: IdentifiedArrayOf<SettingsSection.State>

        public init(sections: IdentifiedArrayOf<SettingsSection.State>) {
            self.sections = sections
        }
    }

    public enum Action: Equatable {
        case didAppear
        case section(Tagged<SettingsSection, String>, SettingsSection.Action)
    }

    public init() {
    }

    public var body: some Reducer<State, Action> {
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

extension Settings.State {
    public static var sampleItems: [SettingsItem.State] {
        let item1 = SettingsItem.State(identifier: Tagged("item_1"),
                                             title: "Item 1",
                                             type: .toggle)
        let item2 = SettingsItem.State(identifier: Tagged("item_2"),
                                             title: "Item 2",
                                             type: .optionPicker)
        let item3 = SettingsItem.State(identifier: Tagged("item_3"),
                                             title: "Item 3",
                                             type: .staticText)
        let item4 = SettingsItem.State(identifier: Tagged("item_4"),
                                             title: "Item 4",
                                             type: .link)
        return [item1, item2, item3, item4]
    }

    public static var sampleSections: [SettingsSection.State] {
        let section1 = SettingsSection.State(identifier: Tagged("sec1"),
                                             header: "Section 1 Header",
                                             items: [sampleItems[0], sampleItems[1]],
                                             footer: "Section 1 Footer")
        let section2 = SettingsSection.State(identifier: Tagged("sec2"),
                                             header: "Section 2 Header",
                                             items: [sampleItems[2], sampleItems[3]],
                                             footer: "Section 2 Footer")

        return [section1, section2]
    }

    public static var sampleSettings: Self {
        Self(sections: [sampleSections[0], sampleSections[1]])
    }
}
