//
//  NewContactRouter.swift
//  CallBro
//
//  Created by AndUser on 25.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class NewContactRouter: NewContactModuleOutput {

    // MARK: - Private variables

//    private var newContactModuleInput: NewContactModuleInput?

    func displayContactsScreen() {
//        NewContactModuleAssembly.buildModule()
//        newContactModuleInput?.presentNewContactScreen()
        navController.popViewController(animated: true)
    }

}
