
import SwiftyJSON

public struct List {
    
	public let name: String
	public let id: Int

    public init(name: String, id: Int) {
        self.name = name
        self.id = id
    }

    public init?(json: JSON) {
        guard let name = json["name"].string,
            id = json["id"].int else { return nil }

        self.name = name
        self.id = id
    }
}

public extension List {

    public static func dummies() -> [List] {
        return ["Monday", "Tuesday", "Wedneday", "Thursday"].enumerated().map { List(name: $1, id: $0) }
    }
}