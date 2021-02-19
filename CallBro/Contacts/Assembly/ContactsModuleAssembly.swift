//
//  ContactsModuleAssembly.swift
//  CallBro
//
//  Created by AndUser on 26.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

public final class ContactsModuleAssembly {

    // MARK: - Public functions

    public static func buildModule() -> UIViewController {
        let view = ContactsScreen()
        let presenter = ContactsPresenter()
        let router = ContactsRouter(view: view)

        view.output = presenter
        presenter.moduleOutput = router

        return view
    }
}
