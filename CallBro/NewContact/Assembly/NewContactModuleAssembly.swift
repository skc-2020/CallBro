//
//  Assembly.swift
//  CallBro
//
//  Created by AndUser on 25.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

public final class NewContactModuleAssembly {

    // MARK: - Public functions

    public static func buildModule() -> UIViewController {
        let view = NewContactScreen()
        let interactor = NewContactInteractor()
        let presenter = NewContactPresenter()
        let router = NewContactRouter()

        view.output = presenter
        presenter.interactor = interactor
        presenter.moduleOutput = router
//        presenter.view = view  // not used

        return view
    }
}
