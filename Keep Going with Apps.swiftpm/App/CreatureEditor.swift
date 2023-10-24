import SwiftUI
import Guide

struct CreatureEditor: View {
    //#-learning-code-snippet(defineVariablesCreatureEditor)
    //#-learning-code-snippet(environmentValue)
    @EnvironmentObject var data : CreatureZoo
    @State var newCreature : Creature = Creature(name: "", emoji: "")
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        SPCAssessableGroup(view: self) {
            VStack(alignment: .leading) {
                //#-learning-code-snippet(defineYourView)
                Form {
                    Section("Name") {
                        TextField("Name", text: $newCreature.name)
                    }
                    Section("Emoji") {
                        TextField("Emoji", text: $newCreature.emoji)
                    }
                    Section("Creature Preview") {
                        CreatureRow(creature: newCreature)
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button("Add") {
                        data.creatures.append(newCreature)
                        dismiss()
                    }
                }
            }
            //#-learning-code-snippet(addButtonToToolbar)
        }
    }
}

struct CreatureEditor_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack() {
            CreatureEditor().environmentObject(CreatureZoo())
        }
    }
}

