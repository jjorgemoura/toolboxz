//import ComposableArchitecture
//import SwiftUI
//import Tagged
//
//public struct SettingsSectionView: View {
//    let store: StoreOf<SettingsSection>
//
//    public init(store: StoreOf<SettingsSection>) {
//        self.store = store
//    }
//
//    public var body: some View {
//        WithViewStore(store, observe: { $0 }) { viewStore in
//            Section(content: {
//                ForEachStore(self.store.scope(state: \.items,
//                                              action: SettingsSection.Action.item)) { itemStore in
//                    SettingsItemView(store: itemStore)
//                }
//            },
//                    header: { Text(viewStore.header) },
//                    footer: { Text(viewStore.footer) })
//        }
//    }
//}
//
//#if DEBUG
//struct SettingsSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack {
//            List {
//                SettingsSectionView(
//                    store: Store(initialState: Settings.State.sampleSections[0]) {
//                        SettingsSection()
//                    }
//                )
//                SettingsSectionView(
//                    store: Store(initialState: Settings.State.sampleSections[1]) {
//                        SettingsSection()
//                    }
//                )
//            }
//        }
//    }
//}
//#endif
