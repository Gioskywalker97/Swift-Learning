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
                        .padding()
                }
                .font(.title3)
                Spacer()
        }
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        Characters().environmentObject(CharacterList())
    }
}
