import SwiftUI


class CharacterList : ObservableObject {
 @Published var characters = [
    Character(name: "Anakin Skywalker", title: "Jedi Master", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Obi Wan Kenobi", title: "Jedi Knight", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Padme Amadalla", title: "Senator of Naboo", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Yoda", title: "Master Jedi", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Mace Windu", title: "Jedi Knight", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),
    Character(name: "Emporer Palpatine", title: "Emporer of the Republic", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"]),

    ]
}


struct Character : Identifiable {
    var name : String
    var title : String
    var birthday: String
    var showsAndMovies: Array<Any>
    var id = UUID()
}
