import ComposableArchitecture
import SwiftUI

public struct SettingsView: View {
    let store: StoreOf<Settings>

    public init(store: StoreOf<Settings>) {
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
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
//        SettingsView(store: Store(initialState: Settings.State.standard,
//                                  reducer: Settings()))

        Text("TEMP")
    }
}
#endif
