import SwiftUI

struct Characters: View {
    @EnvironmentObject var data : CharacterList
    @State private var searchText = ""
    
    var body: some View {
        ScrollView {
                VStack {
                    List {
                        NavigationLink("Favorites") {
                            Favorites()
                                .navigationTitle("Favorites")
                        }
                    }
                    .frame(width: 400, height: 100, alignment: .leading)
                    VStack {
                        ForEach(data.characters) { character in
                            NavigationLink {
                                CharacterDetails(character: character)
                                    .navigationTitle(character.name)
                            } label: {
                                CharacterRow(character: character)
                            }
                        }    
                        .padding()
                        .font(.title3)
                        .foregroundColor(.cyan)
                        Spacer()
                    }
                }
        }
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters().environmentObject(CharacterList())
    }
}
