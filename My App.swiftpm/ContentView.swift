import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data : CharacterList
    
    var body: some View {
        VStack {
            Text("🔫")
            Section("Star Wars 101") {
                
                NavigationLink("View the Characters") {
                    Characters()
                        .navigationTitle("Characters")
                } 
                
            }
        }
    }
}
