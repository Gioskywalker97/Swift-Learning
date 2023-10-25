import SwiftUI


class CharacterList : ObservableObject {
 @Published var characters = [
    Character(name: "Gorilla", emoji: "🦍"),
    Character(name: "Peacock", emoji: "🦚"),
    Character(name: "Squid", emoji: "🦑"),
    Character(name: "Alligator", emoji: "🐊"),
    Character(name: "T-Rex", emoji: "🦖"),
    Character(name: "Bee", emoji: "🐝"),

    ]
}


struct Character : Identifiable {
    var name : String
    var emoji : String
    var id = UUID()
}
