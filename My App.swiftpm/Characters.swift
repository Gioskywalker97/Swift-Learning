import SwiftUI

struct Characters: View {
    @EnvironmentObject var data : CharacterList
    var index = 0
    
    var body: some View {
        
        VStack {
                List {
                    ForEach(data.characters) { character in
                        NavigationLink {
                            CharacterDetails(character: character)
                                .navigationTitle(character.name)
                        } label: {
                            CharacterRow(character: character)
                        }
                    }    
                }
                .padding()
                .font(.title3)
                .foregroundColor(.green)
                Spacer()
        }
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters().environmentObject(CharacterList())
    }
}
