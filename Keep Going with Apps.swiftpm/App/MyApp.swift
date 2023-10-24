import SwiftUI
import Guide
//#-learning-code-snippet(myApp)

@main
/*#-code-walkthrough(myApp.appProtocol)*/
struct MyApp: App {
    @StateObject var data = CreatureZoo()
    /*#-code-walkthrough(myApp.appProtocol)*/
    //#-learning-code-snippet(createInstanceCreatureZoo)

    /*#-code-walkthrough(myApp.body)*/
    var body: some Scene {
        SPCAssessableWindowGroup(app: self, assessmentCandidates: [CreatureZoo()]) {
            NavigationStack { 
                ContentView()
            }
            .environmentObject(data)

            .navigationTitle("My Creatures")
        }
    }
    /*#-code-walkthrough(myApp.body)*/
}
