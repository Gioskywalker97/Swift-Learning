import SwiftUI

struct StoryEditor: View {
    @State var hobby = "dancing"
    @State var name: String = ""
    @State var favoriteFood: String = ""
    @State var show = true
    var body: some View {
        VStack {
            Toggle("Press Me", isOn: $show)
            VStack{
            
                TextField("Full Name", text: $name)
                TextField("Favorite Food", text: $favoriteFood)
                TextField("Hobby", text: $hobby)
                
                Text("Hi there, I love \(hobby). Nice to meet you!")
                Text("Hello, my name is \(name), my favorite hobby is \(hobby) and I can't stop eating \(favoriteFood)!")
            }
        }
        .padding()
    }
}

struct StoryEditor_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditor()
    }
}
