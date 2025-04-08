import ComposableArchitecture
import Foundation
import Tagged

public struct Settings: Reducer {
    public struct State: Equatable {
        var settingsData: SettingsData

        public init(settingsData: SettingsData) {
            self.settingsData = settingsData
        }
    }

    public enum Action: Equatable {
        case didAppear
        case toggleTapped(Tagged<SettingsItemViewData, String>)
        case urlTapped(URL)
    }

    public init() {
    }

    public func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .didAppear:
            return .none
        case let .toggleTapped(identifier):
            print("JM: -> \(identifier)")
//            state
//                .settingsData
//                .sections
//                .flatMap(\.items)
//                .first(where: { $0.identifier == identifier })?
//                .type = .toggle(false)

            state.settingsData.sections = []

            //                .toggleSwitch()
//            {
//                    toggleSetting.type.toggleSwitch()
//                }

            return .none
        case let .urlTapped(url):
            print(url)
            return .none
        }
    }
}

public struct SettingsData: Equatable {
    let appBuild: String
    let appVersion: String
    var sections: IdentifiedArrayOf<SettingsSectionViewData>
}

public struct SettingsSectionViewData: Equatable, Identifiable {
    let identifier: Tagged<SettingsSectionViewData, String>
    let header: String
    var items: IdentifiedArrayOf<SettingsItemViewData>
    let footer: String

    public var id: Tagged<SettingsSectionViewData, String> {
        self.identifier
    }
}

public struct SettingsItemViewData: Equatable, Identifiable {
    var identifier: Tagged<SettingsItemViewData, String>
    let title: String
    var type: SettingItemType

    public var id: Tagged<SettingsItemViewData, String> {
        self.identifier
    }
}

public indirect enum SettingItemType: Equatable {
    case child(SettingsItemViewData)
    case link(URL)
    case optionPicker([String])
    case staticText(String)
    case theme
    case toggle(Bool)

    mutating func toggleSwitch() {
        if case let .toggle(currentValue) = self {
            let xpto = currentValue ? false : true
            self = .toggle(xpto)
        }
    }
}

extension SettingsData {
    public static var sampleItems: [SettingsItemViewData] {
        let item1 = SettingsItemViewData(identifier: Tagged("item_1"),
                                         title: "Item 1 is toggle",
                                         type: .toggle(true))
        let item2 = SettingsItemViewData(identifier: Tagged("item_2"),
                                         title: "Item 2 is optionPicker",
                                         type: .optionPicker(["light", "dark", "system"]))
        let item3 = SettingsItemViewData(identifier: Tagged("item_3"),
                                         title: "Item 3 is static Text",
                                         type: .staticText("This is a static text!"))
        let item4 = SettingsItemViewData(identifier: Tagged("item_4"),
                                         title: "Item 4 is link",
                                         type: .link(URL(string: "https://www.apple.com/uk")!))
        let item5 = SettingsItemViewData(identifier: Tagged("item_5"),
                                         title: "Item 5 is toggle",
                                         type: .toggle(false))
        let item6 = SettingsItemViewData(identifier: Tagged("item_6"),
                                         title: "Item 6 is child",
                                         type: .child(item5))
        let item7 = SettingsItemViewData(identifier: Tagged("item_7"),
                                         title: "Item 7 is theme",
                                         type: .theme)
        return [item1, item2, item3, item4, item6, item7]
    }

    public static var sampleSections: [SettingsSectionViewData] {
        let sampleItemsList = sampleItems

        let section1 = SettingsSectionViewData(identifier: Tagged("sec1"),
                                               header: "Section 1 Header",
                                               items: [sampleItemsList[0], sampleItemsList[1]],
                                               footer: "Section 1 Footer")

        let section2 = SettingsSectionViewData(identifier: Tagged("sec2"),
                                               header: "Section 2 Header",
                                               items: [sampleItemsList[2], sampleItemsList[3], sampleItemsList[5]],
                                               footer: "Section 2 Footer")

        let section3 = SettingsSectionViewData(identifier: Tagged("sec3"),
                                               header: "Section 3 Header",
                                               items: [sampleItemsList[4]],
                                               footer: "Section 3 Footer")

        return [section1, section2, section3]
    }

    public static var sampleSettings: Self {
        Self(
            appBuild: "101",
            appVersion: "1.0.0",
            sections: [sampleSections[0], sampleSections[1], sampleSections[2]]
        )
    }
}
