import ComposableArchitecture
import SettingsFeature
import SwiftUI
import Tagged

@main
struct toolboxzApp: App {

    let store = Store(
        initialState: Settings.State(settingsData: SettingsData.sampleSettings),
        reducer: { Settings() }
    )

    var body: some Scene {
        WindowGroup {
            NavigationView {
                SettingsView(store: store)
            }
        }
    }
}
