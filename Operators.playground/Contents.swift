import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "I'm Older then you"
} else if myAge < yourAge {
    "I'm younger then you"
} else {
    "We are the same age"
}
/// 1. unary prefix
let foo = !true
///  2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
///  3. binary infix
let result = 1 + 2

let age = 30
let message = age >= 18
    ? "You are an adult"
    : "You are not yet an adult"
