import ComposableArchitecture
import SwiftUI

public struct SettingsView: View {
    let store: StoreOf<Settings>

    public init(store: StoreOf<Settings>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in

            List {
//                ForEach(viewStore.state.sections) { section in
//                    NavigationLink(state: section) {
//                        SettingsSectionView(store: store.scope(
//                            state: \.sections,
//                            action: Settings.Action.section)
//                        )
//                    }
//                }
            }
        }
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            List {
                SettingsView(
                    store: Store(initialState: Settings.State.sampleSettings) {
                        Settings()
                    }
                )
            }
        }
    }
}
#endif
