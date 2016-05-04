//
//  ViewController.swift
//  TodoList
//
//  Created by Hai Nguyen on 5/3/16.
//  Copyright © 2016 Hai Nguyen. All rights reserved.
//

import UIKit
import SwiftyJSON

final class ViewController<T, C: UITableViewCell>: UITableViewController {

    private var items: [T] = []

    let resource: NetworkResource<T>
    var configure: ((C, T) -> Void)?
    var didSelect: (T -> Void)?

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(resource: NetworkResource<T>) {
        self.resource = resource
        super.init(style: .plain)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(C.self, forCellReuseIdentifier: "Cell")
        tableView.separatorColor = .lightGray()

        NSURLSession.shared().dataTask(with: resource.url) { optionalData, _, _ in
            guard let data = optionalData else { return }
            let json = JSON(data: data).arrayValue

            dispatch_async(dispatch_get_main_queue()) { [weak self] in
                self?.items = json.flatMap { self?.resource.parser($0) }
                self?.tableView.reloadData()
            }
        }.resume()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        configure?(cell as! C, items[indexPath.row])

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: NSIndexPath) {
        didSelect?(items[indexPath.row])
    }
}