import SwiftUI

struct CharacterDetails: View {
    @EnvironmentObject var data : CharacterList
    let character : Character
    func add(object: Character) {
        if !data.favorites.contains(object) {
            data.favorites.append(object)
            }
    }
    
    var body: some View {
        ScrollView{
            VStack {
                //Display Name and image
                Text(character.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .animation(.easeInOut, value: character.title)
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .padding([.top], 10)
                
                Text(character.title.uppercased())
                    .font(.title)
                    .fontWeight(.medium)
                    .opacity(0.6)
                
                Image(character.profilePic)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 125, height: 250, alignment: .top)
                
                HStack {
                    Text("Movies and Shows")
                        .font(.title)
                        .padding([.leading, .top], 20)
                        .foregroundColor(.white)
                        .shadow(color: .blue, radius: 4, x: 0.0, y: 0.0)
                    Spacer()
                }
                //Iterate over each Movie/Show
                    ForEach(0..<character.showsAndMovies.count, id: \.self) { char in
                        Text(character.showsAndMovies[char])
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.cyan)
                            .shadow(color: .blue, radius: 1)
                            .padding(8)
                    }
                Rectangle()
                    .foregroundColor(.red)
                    .shadow(color: .red, radius: 8, y:2.0)
                    .padding(20)
                
                    VStack {
                        Text("Story:")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding([.top, .bottom], 15)
                            
                        ForEach(0..<character.desc.count, id: \.self) { para in
                            Text(character.desc[para])
                                .font(.headline)
                                .foregroundColor(.cyan)
                                .padding([.leading, .trailing], 25)
                                .padding([.bottom], 20)
                                .lineSpacing(8)
                        }
                    }
                }
            .background(Color(.black))
            .opacity(0.9)
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        add(object: character)
                    }, label: {
                        Text("Fave")
                    })
                }
                ToolbarItem {
                    Link("Wiki", 
                         destination: URL(string: character.url)!)
                }
            }
        }
    }
}

struct CharacterDetails_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetails(character: Character(name: "Temp", title: "Temp", profilePic: "StarWars", showsAndMovies: ["The Phantom Menace", "Attack of the Clones", "The Clone Wars","Revenge of the Sith", "Rebels", "Rogue One", "The Original Triology", "Kenobi", "Ashoka"], desc: ["In addition to the first six Star Wars films, the character appears in the anthology film Rogue One. He also appears in television series (most substantially The Clone Wars) and numerous iterations of the Star Wars Expanded Universe, including video games, novels, and comic books. Due to Vader's popularity, various merchandise of the character, such as action figures and replicas of his lightsaber, has been produced.","","","",""], url: "https://en.wikipedia.org/wiki/Darth_Vader"))
    }
}
