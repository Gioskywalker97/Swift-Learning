import SwiftUI

struct Favorites: View {
    @EnvironmentObject var data : CharacterList
    
    
    var body: some View {
        VStack {
            List {
                ForEach(data.favorites) { character in
                    NavigationLink {
                        CharacterDetails(character: character)
                            .navigationTitle(character.name)
                    } label: {
                        CharacterRow(character: character)
                    }
                }
                .onDelete(perform: { indexSet in
                    data.favorites.remove(atOffsets: indexSet)
                })
            }
            .padding()
            .font(.title3)
            .foregroundColor(.cyan)
           
        }
    }
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorites().environmentObject(CharacterList())
    }
}
