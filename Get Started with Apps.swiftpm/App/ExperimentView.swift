import SwiftUI

struct ExperimentView: View {
    var body: some View {
        VStack {
            FriendDetailView()
            HStack {
                Image("Blu")
                    .resizable().scaledToFit()
                VStack {
                    Text("Blue")
                        .font(.largeTitle)
                    Text("The bestest helper on this side of the Mississippi!")
                        .font(.caption)
                }
            }
            HStack {
                VStack{
                    Image("Hopper")
                        .resizable()
                        .scaledToFit()
                    HStack {
                        Text("Hopper")
                            .font(.largeTitle)
                        Text("Best Friend there is")
                            .font(.caption)
                    }
                }
            
            }
            //#-learning-task(createBluView)
            //#-learning-task(createHopperView)
        }
    }
}

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ExperimentView()
        }
    }
}
