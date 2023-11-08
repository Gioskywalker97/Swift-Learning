import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(
    name: "Foo",
    age: 20
)
let nameAndAge = foo.self

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name:String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer
let c128 = CommodoreComputer(
    name: "My Commodore 128"
)

//Computed properties
struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
fooBar.firstName
fooBar.lastName
fooBar.fullName


struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed


struct LivingThing {
    init() {
        "I'm a living thing"
    }
}

//Cannot subclass structures
//struct Animal: LivingThing {
//    
//}

//Custom Copies
struct Bike {
    let manufacturer: String
    var currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer:
             self.manufacturer,
             currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    manufacturer: "HD",
    currentSpeed: 20
)

var bike2 = bike1.copy(currentSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed
