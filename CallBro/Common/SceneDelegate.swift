//
//  SceneDelegate.swift
//  CallBro
//
//  Created by AndUser on 19.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

public let navController = UINavigationController(rootViewController: ContactsModuleAssembly.buildModule())

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        navController.navigationBar.barTintColor = .green
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

}
