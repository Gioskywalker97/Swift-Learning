import Foundation

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName() throws -> String {
        switch (firstName, lastName) {
        case (.none, .none):
            throw Errors.bothNamesAreNil
        case (.none, .some):
            throw Errors.firstNameIsNil
        case (.some, .none):
            throw Errors.lastNameIsNil
        case let (.some(firstName), .some(lastName)):
            return "\(firstName) \(lastName)"
        }
    }
}

let foo = Person (
    firstName: "Foo",
    lastName: nil
)
//wont work needs DO catch block let fullName = try foo.getFullName()
do {
    let fullName = try foo.getFullName()
} catch {
    "Got an error = \(error)"
}

do {
    let fullName = try foo.getFullName()
    fullName
} catch is Person.Errors{
    "Got an error"
}

let bar = Person(
    firstName: nil,
    lastName: nil
)

do {
    let fullName = try bar.getFullName()
    fullName
} catch Person.Errors.firstNameIsNil {
    "First name is nil"
} catch Person.Errors.lastNameIsNil {
    "Last name is nil"
} catch Person.Errors.bothNamesAreNil {
    "Both names are nil"
} catch {
    "Some other error was thrown"
}


struct Car {
    let manufacturer: String
    
    enum Errors: Error {
        case invalidmanufacturer
    }
    
    init(
        manufacturer: String
    ) throws {
        if manufacturer.isEmpty {
            throw Errors.invalidmanufacturer
        }
        self.manufacturer = manufacturer
    }
}
do {
    let myCar = try Car(
        manufacturer: ""
    )
} catch Car.Errors.invalidmanufacturer {
    "Invalid Manufacturer"
} catch {
    "Some other error"
}

if let yourCar = try? Car(
    manufacturer: "Tesla"
) {
    "Success, your car is \(yourCar)"
} else {
    "Failed to construct"
}
//NOT recommended
let theirCar = try! Car(manufacturer: "Ford")
theirCar.manufacturer










struct Dog {
    let isInjured: Bool
    let isSleeping: Bool
    
    enum BarkingErrors: Error {
        case cannotBarkIsSleeping
    }
    
    enum RunningErrors: Error {
        case cannotRunIsInjured
    }
    
    func bark() throws {
        if isSleeping {
            throw BarkingErrors.cannotBarkIsSleeping
        }
       "Bark..."
    }
    
    func run() throws {
        if isInjured {
            throw RunningErrors.cannotRunIsInjured
        }
       "Run..."
    }
    
    func barkAndRun() throws {
        try bark()
        try run()
    }
}

let dog = Dog(
    isInjured: true,
    isSleeping: true
)

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping,
        Dog.RunningErrors.cannotRunIsInjured {
    "Cannot bark is sleeping or Cant run is injured"
} catch {
    "Another error"
}

do {
    try dog.barkAndRun()
} catch Dog.BarkingErrors.cannotBarkIsSleeping {
    "Cannot bark is sleeping"
} catch Dog.RunningErrors.cannotRunIsInjured {
    "Cant run is injured"
} catch {
    "Another error"
}



func fullName(
    firstName: String?,
    lastName: String?,
    calculator: (String?, String?) throws -> String?
) rethrows -> String?{
    try calculator(
        firstName,
        lastName
    )
}

enum NameErrors: Error {
    case firstNameIsInvalid
    case lastNameIsInvalid
}

func + (
    firstName: String?,
    lastName: String?
) throws -> String? {
    guard let firstName, 
            !firstName.isEmpty else {
        throw NameErrors.firstNameIsInvalid
    }
    guard let lastName, 
            !lastName.isEmpty else {
        throw NameErrors.lastNameIsInvalid
    }
    return "\(firstName) \(lastName)"
}


do {
    let fooBar = try fullName(
        firstName: "nil",
        lastName: nil,
        calculator: +
    )
} catch NameErrors.firstNameIsInvalid {
    "First name invalid"
} catch NameErrors.lastNameIsInvalid {
    "Last name is invalid"
} catch let err {
    "Some other error = \(err)"
}



enum IntegerErrors: Error {
    case noPositiveIntegerBefore(thisValue: Int)
}

func getPreviousPositiveInteger(
    from int: Int
) -> Result<Int, IntegerErrors> {
    guard int > 0 else {
        return Result.failure(
            IntegerErrors.noPositiveIntegerBefore(
                thisValue: int
            )
        )
    }
    return Result.success(int - 1)
}

func performGet(forValue value: Int) {
    switch getPreviousPositiveInteger(from: value) {
    case let .success(previousValue):
        "Previous value is \(previousValue)"
    case let .failure(error):
        switch error {
        case let .noPositiveIntegerBefore(thisValue):
            "No positive in before \(thisValue)"
        }
    }
}
performGet(forValue: 0)
performGet(forValue: 2)
