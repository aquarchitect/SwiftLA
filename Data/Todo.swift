//
//  Todo.swift
//  Common
//
//  Created by Hai Nguyen on 5/3/16.
//
//

import SwiftyJSON

public struct Todo {

    public let title: String
	public let listID: Int
	public let done: Bool

    public init(title: String, listID: Int, done: Bool) {
        self.title = title
        self.listID = listID
        self.done = done
    }

    public init?(json: JSON) {
        guard let title = json["title"].string, listID = json["listID"].int,
            done = json["done"].bool else { return nil }

        self.title = title
        self.listID = listID
        self.done = done
    }
}

public extension Todo {

    public static func dimmies() -> [Todo] {
        let activities = ["Eat", "Sleep", "Walk", "Play", "Run", "Crawl"]
        return activities.enumerated().map { Todo(title: $1, listID: $0 % 4, done: $0 % 2 == 0) }
    }
}
