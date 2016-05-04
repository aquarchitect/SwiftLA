//
//  HelloWorld.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 3/23/16.
//
//

import Foundation

struct HelloWorld {

    /* ===================================================== */

    // static func hello() -> String {
    //     return hello("World")
    // }

    // static func hello(name: String) -> String {
    //     return "Hello, \(name)!"
    // }

    /* ===================================================== */

    /*
     Default Parameter Values: 
        - You can define a default value for any parameter in a function by assigning a value to the parameter after that parameter’s type.
        - If a default value is defined, you can omit that parameter when calling the function.”

     Excerpt From: Apple Inc. “The Swift Programming Language (Swift 2.2 Prerelease). iBooks.
    */
    static func hello(name: String = "World") -> String {
        return "Hello, \(name)!"
    }

    /* ===================================================== */
}