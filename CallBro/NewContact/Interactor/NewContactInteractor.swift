//
//  NewContactInteractor.swift
//  CallBro
//
//  Created by AndUser on 16.02.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class NewContactInteractor: NewContactInteractorInput {

    func saveContact(_ newContact: Contact) {
        print("Interactor is saving...")
        contactBook.append(newContact)
    }

}

