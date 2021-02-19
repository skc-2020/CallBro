//
//  NewContactPresenter.swift
//  CallBro
//
//  Created by AndUser on 27.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class NewContactPresenter {

    // MARK: - External dependencies

//    unowned var view: NewContactScreenInput! // not used
    /* weak */ var moduleOutput: NewContactModuleOutput?
    var interactor: NewContactInteractorInput!
}

extension NewContactPresenter: NewContactScreenOutput {
    func showContactsScreen() {
        moduleOutput?.displayContactsScreen()
    }
    
    func save(contact: Contact) {
        print("Presenter is saving...")
        interactor.saveContact(contact)
    }
}
