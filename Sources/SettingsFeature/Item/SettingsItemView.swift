import ComposableArchitecture
import SwiftUI
import Tagged

public struct SettingsItemView: View {
    let store: StoreOf<SettingsItem>

    public init(store: StoreOf<SettingsItem>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            HStack {
                Text(viewStore.title)
                Spacer()

                switch viewStore.type {
//                case .toggle:
//                    Toggle("sdfdsf", isOn: <#T##Binding<Bool>#>)

                case .staticText:
                    Text(viewStore.title)

                default:
                    Text(viewStore.type.rawValue)
                }
            }
            .padding()
        }
    }
}

#if DEBUG
struct SettingItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            List {
                SettingsItemView(
                    store: Store(initialState: Settings.State.sampleItems[0]) {
                        SettingsItem()
                    }
                )
                SettingsItemView(
                    store: Store(initialState: Settings.State.sampleItems[1]) {
                        SettingsItem()
                    }
                )
                SettingsItemView(
                    store: Store(initialState: Settings.State.sampleItems[2]) {
                        SettingsItem()
                    }
                )
                SettingsItemView(
                    store: Store(initialState: Settings.State.sampleItems[3]) {
                        SettingsItem()
                    }
                )
            }
        }
    }
}
#endif
