//
//  Leap.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 3/23/16.
//
//

import Foundation

/* ===================================================== */

/*
 This exmple demonstrates how Struct is constructed with:
    - The system default initializer
    - Custom overriden initialize
*/

// struct A {
//
//     var a = 1
//     var b = 2
//
//     init(a: Int = 3) {
//         self.a = a
//         self.b = a * 3
//     }
// }
//
// func doSth() {
//     let a = A()
// }

/* ===================================================== */

/* First approach */

// struct Year {
//
//     let calendarYear: Int
//
//     var isLeapYear: Bool = false
//
//     init(calendarYear: Int) {
//         self.calendarYear = calendarYear
//         self.isLeapYear = true
//     }
// }

/* ===================================================== */

/* Second approach */

// struct Year {
//
//     var isLeapYear: Bool = false
//
//     init(calendarYear: Int) {
//         self.isLeapYear = true
//     }
// }

/* ===================================================== */

/* Final solution */

struct Year {

    let calendarYear: Int

    /* Stored property vs Computed Property */

    // var isLeapYear: Bool {
    //     let isEvenlyDivisibleBy4 = (calendarYear % 4) == 0
    //     let isEvenlyDivisibleBy100 = (calendarYear % 100) != 0
    //     return (isEvenlyDivisibleBy4 && isEvenlyDivisibleBy100) || ((calendarYear % 400) == 0)
    // }

    /*
     This approach is quite unreadable, and required detailed comments; but it's the FUNCTIONAL approach.
     We create a closure, and pass in the `calendarYear` value to execute the closure
    */
    var isLeapYear: Bool {
        return { ($0 % 4 == 0) && ($0 % 100 != 0) || ($0 % 400 == 0) }(calendarYear)
    }
}

/* ===================================================== */