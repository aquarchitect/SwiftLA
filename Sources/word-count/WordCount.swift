//
//  WordCount.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 4/20/16.
//  
//

import Foundation

struct WordCount {

    let words: String

//    init(words: String) {
//        self.words = words
//    }

    func count() -> Dictionary<String, Int> {
        var dictionary = [String: Int]()
        let arrayWords = self.words.componentsSeparatedByString(" ")

        NSCharacterSet Set<Character>

        let set = NSCharacterSet.letterCharacterSet().invertedSet
        let newString = words.stringByTrimmingCharactersInSet(set)

        NSRege

        for word in newString {
//            if dictionary[word] == nil {
//                dictionary[word] = 0
//            }
//
//            dictionary[word] = dictionary[word]! + 1

            dictionary[word] = (dictionary[word] ?? 0) + 1
        }

        return dictionary
    }
}