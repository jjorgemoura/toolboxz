//import ComposableArchitecture
//import Foundation
//import Tagged
//
//public struct SettingsItem: Reducer {
//    public struct State: Equatable, Identifiable {
//        var identifier: Tagged<SettingsItem, String>
//        let title: String
//        let type: SettingItemType
//
//        public var id: Tagged<SettingsItem, String> {
//            self.identifier
//        }
//
//        public init(identifier: Tagged<SettingsItem, String>, title: String, type: SettingItemType) {
//            self.identifier = identifier
//            self.title = title
//            self.type = type
//        }
//    }
//
//    public enum Action: Equatable {
//        case didAppear
//    }
//
//    public func reduce(into state: inout State, action: Action) -> Effect<Action> {
//        switch action {
//        case .didAppear:
//                .none
//        }
//    }
//}
//
//public indirect enum SettingItemType: Equatable {
//    case child(SettingsItem.State)
//    case link(URL)
//    case optionPicker([String])
//    case staticText(String)
//    case toggle(Bool)
//}
