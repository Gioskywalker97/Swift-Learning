import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data : CharacterList
    
    var body: some View {
        VStack {
            Image("StarWars")
                .resizable()
                .scaledToFit()
            Section("Star Wars 101") {
                NavigationLink("View the Characters") {
                    Characters()
                        .navigationTitle("Characters")
                }
                .font(.title2)
                .fontWeight(.medium)
                .padding(1)
            }
            .font(.largeTitle)
            .fontWeight(.heavy)
        }
    }
}
