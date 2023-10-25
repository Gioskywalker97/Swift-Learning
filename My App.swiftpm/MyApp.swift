import SwiftUI

@main
struct MyApp: App {
    @StateObject var data = CharacterList()
    
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
