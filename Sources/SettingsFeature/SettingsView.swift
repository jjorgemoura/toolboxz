import ComposableArchitecture
import SwiftUI

public struct SettingsView: View {
    let store: StoreOf<Settings>

    public init(store: StoreOf<Settings>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store, observe: { $0.settingsData }) { viewStore in
            Form {
                ForEach(viewStore.sections) { section in
                    Section(
                        content: {
                            ForEach(section.items) { item in

                                switch item.type {
                                case .child(_):
                                    Text(item.title)
                                case let .link(url):
                                    Button(item.title) {
                                        viewStore.send(.urlTapped(url))
                                    }
                                case .optionPicker(_):
                                    Text(item.title)
                                case let .staticText(text):
                                    VStack(alignment: .leading) {
                                        Text(item.title)
                                        Text(text)
                                    }
                                case .theme:
                                    NavigationLink(
                                        destination: SettingsThemeView(),
                                        label: { Text(item.title) }
                                    )
                                case let .toggle(boolValue):
                                    Toggle(item.title,
                                           isOn: Binding(get: { boolValue },
                                                         set: { _ in viewStore.send(.toggleTapped(item.identifier)) })
                                    )
                                }
                            }
                        },
                        header: { Text(section.header) },
                        footer: { Text(section.footer) }
                    )
                }
                Section {
                    Text("AppVersion")
                    Text("AppBuild")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

public struct SettingsThemeView: View {
    //    let store: StoreOf<Settings>

    //    public init(store: StoreOf<Settings>) {
    //        self.store = store
    //    }
    public init() {}

    public var body: some View {
        //        WithViewStore(store, observe: { $0.settingsData }) { viewStore in
        List {
            Text("Light")
            Text("Dark")
            Text("System")
        }
        .navigationTitle("Theme")
        .navigationBarTitleDisplayMode(.inline)
    }
    //    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView(
                store: Store(initialState: Settings.State(settingsData: .sampleSettings)) {
                    Settings()
                }
            )
        }
    }
}
#endif
