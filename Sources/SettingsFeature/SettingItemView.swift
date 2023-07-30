import ComposableArchitecture
import SwiftUI

public struct SettingItemView: View {
    let store: StoreOf<SettingItem>

    public init(store: StoreOf<SettingItem>) {
        self.store = store
    }

    public var body: some View {
        Text("Title")
    }
}

#if DEBUG
struct SettingItemView_Previews: PreviewProvider {
    static var previews: some View {
//        SettingItemView(store: Store(initialState: SettingItem.State.standard,
//                                     reducer: SettingsItem()))

        Text("TEMP")
    }
}
#endif
