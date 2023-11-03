import Foundation

let myName = "Vandoo"
let yourName = "Foo"

var names = [
    myName,
    yourName
]
names.append("Bar")
names.append("Baz")

let oldArray = NSMutableArray(
    array: [
    "Foo",
    "Bar"
    ]
)
oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray
