import Foundation
//Used to avoid writing same code/functions multiple times
func perform<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 10, and: 20)

//Different syntax for defining generic functions
func perform2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N where N: Numeric {
    op(lhs, rhs)
}

perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 10, and: 20)

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "jumping..."
    }
    
    func run() {
        "running"
    }
}

func jumpAndRun<T: CanRun & CanJump>(value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(value: person)

//let names: Array<String> = ["Foo", "Bar"]
extension [String] {
    func longestString() -> String? {
        self.sorted { (lhs: String, rhs: String) -> Bool in
            lhs.count > rhs.count
        }.first
    }
}

[
"Foo",
"Bar Baz",
"Qux"
].longestString()

protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
//        Empty
    }
}

struct Button: View {
//    empty
}
struct Table: View {
//    empty
}
//protocals can be generics by associated types
protocol PresentableAsView {
    associatedtype ViewType: View
    func producedView() -> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present(
        view: ViewType,
        on superView: View
    )
}


extension PresentableAsView {
    func configure(
        superView: View,
        thisView: ViewType
    ) {
//        empty by default
    }
    func present(
        view: ViewType,
        on superView: View
    ) {
        superView.addSubView(view)
    }
}

struct MyButton: PresentableAsView {
    
    func producedView() -> Button {
        Button()
    }
    
    func configure(
        superView: View,
        thisView: Button
    ) {
        
    }
}

extension PresentableAsView where ViewType == Button {
    func doSomethingWithButton() {
        "This is a button"
    }
}

let button = MyButton()
button.doSomethingWithButton()

struct MyTable: PresentableAsView {
    func producedView() -> Table {
        Table()
    }
}

extension [Int] {
    func average() -> Double {
        Double(self.reduce(0, +)) / Double(self.count)
    }
}

[1,2,3,4].average()
