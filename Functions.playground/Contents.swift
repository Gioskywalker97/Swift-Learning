import Foundation

func noArgumentsAndNoReturnValue() {
    "I don't know what I'm doing"
}
noArgumentsAndNoReturnValue()


func plusTwo(value: Int) {
    let newValue = value + 2
}
plusTwo(value: 30)


func newPlusTwo(value: Int) -> Int {
    value + 2
}
newPlusTwo(value: 30)


func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}
let customAdded = customAdd(
    value1: 10,
    value2: 20
)

func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}
let customSubtracted = customMinus(
    20,
    10
)

//PLaygrounds
customAdd(
    value1: 20,
    value2: 30
)
//Swift
let added = customAdd(
    value1: 20,
    value2: 30
)
added
//OR
@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}
myCustomAdd(
    20,
    30
)


func doSomethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30)


func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Food")
getFullName(firstName: "Baz", lastName: "Qux")

