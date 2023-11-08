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

