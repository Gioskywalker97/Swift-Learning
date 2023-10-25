import SwiftUI

struct PartyView: View {
    @EnvironmentObject var creatur : CreatureZoo
    @State var newCreatur: Creatur = Creatur(name: "Gorilla", emoji: "🦍")
    
    var body: some View {
        
        VStack {
            HStack() {
                List(creatur.creaturs) { creatur in
                    HStack(alignment: .center) {
                        Spacer()
                        Button(creatur.name) {
                            newCreatur = Creatur(name: creatur.name, emoji: creatur.emoji)
                            
                        }
                        .padding()
                        .font(.title3)
                        .foregroundColor(.green)
                        .resizableFont(maximumFontSize: 2, minimumScaleFactor: 0.5)
                        
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("View Animals at the Party")
            
                VStack {
                    Text(newCreatur.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .animation(.easeInOut, value: newCreatur.emoji)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    HStack {
                        
                        Text(newCreatur.emoji)
                            .resizableFont()
                            .frame(minWidth: 125)
                            .scaledToFill()
                            .animation(.easeInOut.repeatCount(1), value: newCreatur)
                    }
                    Spacer()
                
            }
        }
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView().environmentObject(CreatureZoo())
    }
}
