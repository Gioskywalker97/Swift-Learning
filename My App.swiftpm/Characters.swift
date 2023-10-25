import SwiftUI

struct Characters: View {
    @EnvironmentObject var character : CharacterList
    @State var newChar: Character = Character(name: "Gorilla", title: "🦍", birthday: "09/10/1998", showsAndMovies: ["Revenge if the Sith"])
    var index = 0
    
    var body: some View {
        
        VStack {
            HStack() {
                List(character.characters) { char in
                    HStack(alignment: .center) {
                        Spacer()
                        Button(char.name) {
                            newChar = Character(name: char.name, title: char.title, birthday: char.birthday, showsAndMovies: char.showsAndMovies)
                            
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
                    .animation(.easeInOut, value: newChar.title)
                    .foregroundColor(.blue)
                
                Spacer()
                HStack {
                    
                    Text(newChar.title)
                        
                        .frame(minWidth: 125)
                        .scaledToFill()
                    Text(newChar.birthday)
//                  Iterate over each Movie/Show
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
