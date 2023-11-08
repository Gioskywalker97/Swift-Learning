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
}

let c64 = CommodoreComputer(
    name: "My Commodore",
    manufacturer: "Commodore"
)

let c128 = CommodoreComputer(
    name: "My Commodore 128",
    manufacturer: "Commodore"
)
