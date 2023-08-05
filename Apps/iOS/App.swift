import ComposableArchitecture
import SettingsFeature
import SwiftUI
import Tagged

@main
struct toolboxzApp: App {

    var body: some Scene {
        WindowGroup {
            SettingsView(store: Store(initialState: Settings.State.sampleSettings, reducer: {
                Settings()
            }))
        }
    }
}
