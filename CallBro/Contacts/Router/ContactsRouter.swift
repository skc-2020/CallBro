//
//  ContactsRouter.swift
//  CallBro
//
//  Created by AndUser on 25.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class ContactsRouter: ContactsModuleOutput {

    // MARK: - Private variables

    private var view: UIViewController?

    // MARK: - Initializers

    init(view: UIViewController) {
        self.view = view
    }

    func didShowNewContactScreen() {
        navController.pushViewController(NewContactModuleAssembly.buildModule(), animated: true)
    }

}
