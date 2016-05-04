//
//  Hamming.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 4/6/16.
//
//

import Foundation

/* =============================================================== */

/* Long Approach */

struct Hamming {

    static func compute(str1: String, against str2: String) -> Int?  {
        guard str1.characters.count == str2.characters.count else {
            return nil
        }

        var count = 0

        for index in str1.characters.indices {
            if str1.characters[index] != str2.characters[index] {
                count += 1
            }
        }

        return count
    }
}

/* ================================================================ */

/* Short Approach */

// struct Hamming {
//
//    static func compute(str1: String, against str2: String) -> Int? {
//        guard str1.characters.count == str2.characters.count else {
//            return nil
//        }
//
//        return str1.characters.indices.reduce(Int(0)) {
//            str1[$1] != str2[$1] ? $0 + 1 : $0
//        }
//    }
// }