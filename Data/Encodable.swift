//
//  Encodable.swift
//  Common
//
//  Created by Hai Nguyen on 5/3/16.
//  
//

import Foundation
import SwiftyJSON

public protocol Encodable {}

public extension Encodable {

    public func toJSON() -> JSON {
        var results: [String: AnyObject] = [:]

        for child in Mirror(reflecting: self).children {
            guard let label = child.label else { continue }
            results[label] = child.value as? AnyObject
        }

        return JSON(results)
    }
}

extension List: Encodable {}
extension Todo: Encodable {}