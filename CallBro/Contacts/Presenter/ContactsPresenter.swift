//
//  ContactsPresenter.swift
//  CallBro
//
//  Created by AndUser on 27.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class ContactsPresenter: ContactsScreenOutput {

    // MARK: - External dependencies

    var moduleOutput: ContactsModuleOutput?

// MARK: - ContactScreenOutput

    func didTapAddButton() {
        moduleOutput?.didShowNewContactScreen()
    }

}
