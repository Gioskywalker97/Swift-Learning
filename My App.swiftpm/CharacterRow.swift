import SwiftUI

struct CharacterRow: View {
    var character : Character
    
    var body: some View {
        HStack {
            Text(character.name)
                .font(.title)
            
            Spacer()
            
            Text(character.title)
                .font(.subheadline)
                
        }
        
        
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: Character(name: "Yoda", title: "Master Jedi", birthday: "", showsAndMovies: []))
    }
}
