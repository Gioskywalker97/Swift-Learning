import SwiftUI

struct CharacterRow: View {
    var character : Character
    @State private var searchText = ""
    
    var body: some View {
            HStack {
                Image("StarWars")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .leading)
                VStack(alignment: .center) {
                    Text(character.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(character.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                .padding([.leading])
                .frame(width: 275, height: 150, alignment: .center)
            }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: Character(name: "Temp", title: "Temp", profilePic: "StarWars", showsAndMovies: ["Temporary"], desc: ["","","","",""], url: "https://en.wikipedia.org/wiki/Darth_Vader"))
    }
}
