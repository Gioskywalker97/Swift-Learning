import Foundation

func multiplyByTwo( _ value: Int? = nil) -> Int {
    if let value {
    return value * 2
    } else {
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(4)

let age: Int? = nil
if age != nil {
    "Age is there?"
} else {
    "Age is nil!"
}

if let age {
    "Age is there? Weird"
} else {
    "No age as expected"
}

func checkAge() {
    guard age != nil else {
        "Age is nil as expected"
        return
    }
    "Age is not nil here!"
}

checkAge()

let age2: Int? = 0
func checkAge2() {
    guard let age2 else {
        "Age2 is nil. weird"
        return
    }
    "Age2 is not nil. Nice! Value = \(age2)"
}
checkAge2()

switch age {
case .none:
    "Age has no value. good."
    break
case let .some(value):
    "Age has the value of \(value)"
    break
}

if age2 == 0 {
    "Age2 is 0 as expected"
} else {
    "Age2 is not 0."
}

struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(
    name: "Foo",
    address: nil
)

if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
} else {
    "Foo has no address as expected."
}



if let fooAddress = foo.address,
    let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}

let bar: Person? = Person(
    name: "Bar", 
    address: Person.Address(
        firstLine: nil
    )
)

if bar?.name == "Bar",
   bar?.address?.firstLine == nil {
    "Bar's name is bar and no line of address"
} else {
    "Seems like something is not working"
}

let baz: Person? = Person(
    name: "Baz",
    address: Person.Address(
        firstLine: "Baz first line"
    )
)

switch baz?.address?.firstLine {
case let .some(firstLine) where
    firstLine.starts(with: "Baz"):
    "Baz first address line = \(firstLine)"
case let .some(firstLine):
    "Baz first address line that didn't match the previous case"
    firstLine
case .none:
    "Baz first address didn't match weird!"
}


func getFullName(
    firstName: String,
    lastName: String?
) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    } else {
        return nil
    }
}

getFullName(
    firstName: "Foo",
    lastName: nil
)

func getFullName2(
    firstName: String,
    lastName: String?
) -> String? {
    guard let lastName else {
        return nil
    }
    return "\(firstName) \(lastName)"
}
