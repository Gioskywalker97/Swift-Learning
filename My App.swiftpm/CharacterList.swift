import SwiftUI


class CharacterList : ObservableObject {
 @Published var characters = [
    Character(name: "Anakin Skywalker", title: "🧔🏻", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Obi Wan Kenobi", title: "👴🏻", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Padme Amadalla", title: "👩🏻", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Yoda", title: "🐊", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Mace Windu", title: "👨🏿‍🦲", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Emporer Palpatine", title: "👨🏼‍🦳", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),

    ]
}


struct Character : Identifiable {
    var name : String
    var title : String
    var birthday: String
    var showsAndMovies: Array<Any>
    var id = UUID()
}
