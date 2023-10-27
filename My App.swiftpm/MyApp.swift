import SwiftUI

@main
struct MyApp: App {
    @StateObject var data = CharacterList()
    @State private var searchText = ""
    
    var body: some Scene {
        WindowGroup("data") {
                NavigationStack { 
                    ContentView()
                }
                .environmentObject(data)
                .navigationTitle("Star Wars 101")
        }
    }
}
