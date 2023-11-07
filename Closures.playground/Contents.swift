import Foundation
//Closures are Functions that are inline. They dont use leading keyword "func"

//func add(
//    _ lhs: Int,
//    _ rhs: Int
//) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int 
    = { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }
add(20, 30)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

//Closure Syntax
customAdd(
    20,
    30
) { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
customAdd(
    20,
    30
) { (lhs, rhs) in
    lhs + rhs
}
customAdd(20,30) {$0 + $1}
//Function call syntax
//using: { (lhs: Int, rhs: Int) -> Int in
//        lhs + rhs
//}


let ages = [30, 20, 19, 40]
ages.sorted(by: <)
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
})


func customAdd2(
    _ lhs: Int,
    _ rhs: Int,
using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}


func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

//Closure
doAddition(on: 20) { (value) in
    value + 30
}
doAddition(
    on: 20,
    using: add10To(_:)
)
doAddition(
    on: 20,
    using: add20To(value:)
)
