//
//  LoadResource.swift
//  Client
//
//  Created by Hai Nguyen on 5/3/16.
//  Copyright © 2016 Hai Nguyen. All rights reserved.
//

import Foundation
import SwiftyJSON

struct NetworkResource<T> {

    let url: NSURL
    let parser: JSON -> T?

    init?(string: String, parser: JSON -> T?) {
        guard let url = NSURL(string: string) else { return nil }

        self.url = url
        self.parser = parser
    }
}