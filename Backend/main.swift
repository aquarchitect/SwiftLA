
import Kitura
import KituraNet
import KituraSys
import Data
import SwiftyJSON

let router = Router()
router.get("/lists") { _, response, _ in
    let lists = List.dummies().map { $0.toJSON() }
    _ = try? response.send(json: JSON(lists)).end()
}

router.get("/list/:index") { request, response, _ in
    if let index = Int(request.params["index"] ?? "") {
        let todos = Todo.dimmies()
            .filter { $0.listID == index }
            .map { $0.toJSON() }

        _ = try? response.send(json: JSON(todos)).end()
    } else {
        response.status(.badRequest)
    }

}

HTTPServer.listen(port: 8090, delegate: router)
Server.run()
