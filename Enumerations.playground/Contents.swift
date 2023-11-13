import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
}

let cat = Animals.cat
cat


if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}

switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
}


enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
case .fileOrFolder(
    path: let path,
    name: let name
):
    path
    name
    break
case .wwwUrl(
    path: let path
):
    path
    break
case .song(
    artist: let artist,
    songName: let songName
):
    artist
    songName
    break
}

//Cleaned up for looks and readability
switch wwwApple {
case let .fileOrFolder(
    path,
    name
):
    path
    name
    break
case let .wwwUrl(
    path
):
    path
    break
case let .song(
    artist,
    songName
):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You"
)
if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
        let .bike(manufacturer, _):
            return manufacturer
        }
    }
}


let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "Model X"
)
car.manufacturer

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1987
)
bike.manufacturer


enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue

enum FavoreitEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoreitEmoji.allCases
FavoreitEmoji.allCases.map(\.rawValue)

if let blush = FavoreitEmoji(rawValue: "😊") {
    "Found the Blush Emoji"
    blush
} else {
    "This emoji doesn't exist"
}

if let snow = FavoreitEmoji(rawValue: "❄️") {
    "Found the Snow Emoji"
    snow
} else {
    "This emoji doesn't exist"
}


//Mutating is just asigning a new value to self. Can't mutate much more
enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight


//Uncommon Indirect/Recursive Enums
//An enum that refers to itself
indirect enum IntOperation {
    case add(Int, Int)
    case subtract (Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}

let freehand = IntOperation.freeHand(.add(2, 4))
freehand.calculateResult()
