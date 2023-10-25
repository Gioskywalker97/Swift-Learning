import SwiftUI
import Guide

struct ContentView: View {
    @EnvironmentObject var data : CreatureZoo
    
    //#-learning-code-snippet(declareEnvironmentObject)

    var body: some View {
        
        SPCAssessableGroup(view: self) {
            List {
                Text("ContentView")
                
                Section("Dance") {
                    //#-learning-code-snippet(addNavLinkCreatureDance)
                    NavigationLink("Make the Creatures Dance"){
                        DancingCreatures()
                        .navigationTitle("Creature Dancing")
                    }
                }
                Section("PARTY") {
                    
                        NavigationLink("Go to the Party") {
                            PartyView()
                                .navigationTitle("Animal Party")
                        } 
                
                }
                
                /*#-code-walkthrough(forEach.id)*/
                ForEach(data.creatures) { creature in 
                    NavigationLink {
                        CreatureDetail(creature: creature)
                            .navigationTitle(creature.name)
                    } label: {
                        CreatureRow(creature: creature)
                    }
                }
                .onDelete(perform: { indexSet in
                    data.creatures.remove(atOffsets: indexSet)
                })
                //#-learning-code-snippet(deleteACreature)
            }
            .toolbar {
                ToolbarItem {
                    NavigationLink("+ Add a Creature") {
                        CreatureEditor()
                            .navigationTitle("Add your own creature")
                    }
                }
            }
            //#-learning-code-snippet(addToolBarContentView)
        }
    }
}

