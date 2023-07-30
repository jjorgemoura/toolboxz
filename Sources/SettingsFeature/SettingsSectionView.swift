import ComposableArchitecture
import SwiftUI

public struct SettingsSectionView: View {
    let store: StoreOf<SettingsSection>

    public init(store: StoreOf<SettingsSection>) {
        self.store = store
    }

    public var body: some View {
        Text("Title")

        //        ForEachStore(store) { store in
        //            Text("")
        //        }
    }
}

#if DEBUG
struct SettingsSectionView_Previews: PreviewProvider {
    static var previews: some View {
//        SettingsSectionView(store: Store(initialState: SettingItem.State.standard,
//                                     reducer: SettingsItem()))

        Text("TEMP")
    }
}
#endif
