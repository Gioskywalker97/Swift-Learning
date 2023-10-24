import SwiftUI

struct SlidingRectangle: View {
    //#-learning-code-snippet(width)
    @State var width : Double = 0
    var body: some View {
        VStack {
            //#-learning-code-snippet(slider)
            Slider(value: $width)
            Rectangle()
                .frame(width: width * 300)
            //#-learning-code-snippet(rectangle)
        }
        .padding()
    }
}

struct SlidingRectangle_Previews: PreviewProvider {
    static var previews: some View {
        SlidingRectangle().assess()
    }
}
