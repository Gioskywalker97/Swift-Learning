import SwiftUI

struct CharacterDetails: View {
    let character : Character
    
    var body: some View {
        VStack {
            Text(character.name.uppercased())
                .font(.largeTitle)
                .fontWeight(.bold)
                .animation(.easeInOut, value: character.title)
                .foregroundColor(.blue)
            
            Spacer()
            HStack {
                
                Text(character.title)
                    .frame(minWidth: 125)
                    .scaledToFill()
                Text(character.birthday)
                //Iterate over each Movie/Show
                VStack {
                    List {
                        //TODO
                        //ForEach(character.showsAndMovies[]) { char in
                            //Text("Hello")
                        //}
                    }
                }
            }
            Spacer()
            
        }
    }
}

struct CharacterDetails_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetails(character: Character(name: "Yoda", title: "Master Jedi", birthday: "", showsAndMovies: []))
    }
}
