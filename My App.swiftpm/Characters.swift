import SwiftUI

struct Characters: View {
    @EnvironmentObject var character : CharacterList
    @State var newChar: Character = Character(name: "Gorilla", emoji: "🦍")
    
    var body: some View {
        
        VStack {
            HStack() {
                List(character.characters) { char in
                    HStack(alignment: .center) {
                        Spacer()
                        Button(char.name) {
                            newChar = Character(name: char.name, emoji: char.emoji)
                            
                        }
                        .padding()
                        .font(.title3)
                        .foregroundColor(.green)
                        
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("View Star Wars Characters")
            
            VStack {
                Text(newChar.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .animation(.easeInOut, value: newChar.emoji)
                    .foregroundColor(.blue)
                
                Spacer()
                HStack {
                    
                    Text(newChar.emoji)
                        
                        .frame(minWidth: 125)
                        .scaledToFill()
                        
                }
                Spacer()
                
            }
        }
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters().environmentObject(CharacterList())
    }
}
