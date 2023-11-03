import Foundation

let myName = "Vandad"
let myAge = 20
let yourName = "Food"
let yourAge = 19

if myName == "vandad" {
    "Your name is \(myName)"
} else {
    "Oops,I guessed it wrong"
}


if (myName == "Vandad"
    && myAge == 22)
    ||
    (yourName == "Foo"
     || yourAge == 19) {
    "My name is Vandad and I'm 22...OR... your name is Foo or your 19"
} else {
    "Hmmm, that didn't work so well"
}
