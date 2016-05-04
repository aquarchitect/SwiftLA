import Foundation

/*:
 ## Meet-up 4/6/16
 `map`, `flatMap`, `reduct`, and `filter` are powerful tools when working with collection types in Swift.
 Hope these examples give you some idea of what they do, especially for whom are not familiar with functional programming paradigm.
 */

var ints = [1, 2, 3, 5]

// long form of mapping
var count = 0
for int in ints {
    count += int
}

print(count)

// `map` only loop through the elements; with `enumrate`, you get back the element value and the index of the element
let r0 = ints.enumerate().reduce(0) { $1.0 > 1 ? $0 + $1.1 : $0 }
let r1 = ints.map { $0 * 5 }
print(r0)

// `add` and `+` are matching of types
func add(lhs: Int, rhs: Int) -> Int {
    return lhs + rhs
}

let r2 = ints.reduce(0, combine: +)

// example of range
"Testing".characters.indices
let range0 = 0..<6
let range1 = 0...6

// `forEach` is similar to for-loop without return
ints.forEach { print($0) }

for int in ints {
    print(int)
}

// `flatMap` example
let optionalInts: [Int?] = [1, 2, 3, 4, nil]
let unwrappedInts = optionalInts.flatMap { $0 }