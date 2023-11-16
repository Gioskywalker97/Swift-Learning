import Foundation

//Creates Constructor/Initializer Implicitly for structs
//struct Person {
//    var name: String
//    var age: Int
//}

//Constructor/Initializer Explicitly Syntax
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}
