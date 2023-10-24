import SwiftUI
//#-learning-code-snippet(conditionalViews)

struct ConditionalViews: View {
    /*#-code-walkthrough(conditionalView.stateVar)*/
    /*#-code-walkthrough(conditionalView.statePropertyWrapper)*/@State /*#-code-walkthrough(conditionalView.statePropertyWrapper)*/var isOn = true
    @State var idk = false
    /*#-code-walkthrough(conditionalView.stateVar)*/

    var body: some View {
        VStack {
            /*#-code-walkthrough(conditionalView.ifStatement)*/
            if isOn {
                Text("On")
                    .font(.largeTitle)
                /*#-code-walkthrough(conditionalView.circleView)*/
                Rectangle()
                    .frame(maxHeight: 200)
                    .foregroundColor(.green)
                    //#-learning-code-snippet(customizeIntro)
                /*#-code-walkthrough(conditionalView.circleView)*/
            } else {
                Text("Off")
                    .font(.largeTitle)
                Capsule()
                    .frame(maxHeight: 200)
                    .foregroundColor(.black)
            }
            /*#-code-walkthrough(conditionalView.button)*/
            Button("Press Me") {
                /*#-code-walkthrough(conditionalView.buttonAction)*/
                isOn.toggle()
                /*#-code-walkthrough(conditionalView.buttonAction)*/
            }
            if idk {
                Text("Hello")
            } else {
                Text("Goodbye")
            }
            Button("Press this button") {
                idk.toggle()
            }
        }
    }
}

struct ConditionalViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ConditionalViews().assess()
        }
    }
}


