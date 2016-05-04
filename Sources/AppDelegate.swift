//
//  AppDelegate.swift
//  TodoList
//
//  Created by Hai Nguyen on 5/3/16.
//  Copyright © 2016 Hai Nguyen. All rights reserved.
//

import UIKit
import Common

@UIApplicationMain
final class AppDelegate: UIResponder {

    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]? = [:]) -> Bool {
        guard let listResource = NetworkResource(string: "http://localhost:8090/lists", parser: List.init) else { return false }

        let listController = ViewController<List, UITableViewCell>(resource: listResource)
        listController.configure = {
            $0.textLabel?.text = $1.name
        }

        let navigationController = UINavigationController(rootViewController: listController)

        window = UIWindow(frame: UIScreen.main().bounds)
        window?.rootViewController = navigationController
        window?.backgroundColor = .black()
        window?.makeKeyAndVisible()

        listController.didSelect = {
            guard let todoResource = NetworkResource(string: "http://localhost:8090/list/\($0.id)", parser: Todo.init) else { return }

            let todoController = ViewController<Todo, UITableViewCell>(resource: todoResource)
            todoController.configure = {
                $0.textLabel?.text = $1.title
                $0.accessoryType = $1.done ? .checkmark : .none
            }

            navigationController.pushViewController(todoController, animated: true)
        }

        return true
    }
}