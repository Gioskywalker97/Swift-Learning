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

let foo = Person(
    name: "Foo",
    age: 20
)

foo.age
//Reference pointer to instance of foo. Bar is no pointing to memory where foo is
let bar = foo
bar.increaseAge()
//increased for both because of pointer
foo.age
bar.age

//To compare if variable is pointing to same memory space
if foo === bar {
    "Foo and Bar point to same memory"
} else {
    "Not pointing to same"
}


class Vehicle {
    func goVroom() {
        "Vroom Vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()
class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age
//baz.age += 1
baz.increaseAge()


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year: 2023
        )
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(
            model: "Y",
            year: 2023
        )
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age
func doSomething (with person: Person2) {
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age


class MyClass {
    init() {
        "Initalized"
    }
    func doSomething(){
//        empty
    }
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}
myClosure()
