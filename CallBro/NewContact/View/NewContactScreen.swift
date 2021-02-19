//
//  NewContactScreen.swift
//  CallBro
//
//  Created by AndUser on 21.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class NewContactScreen: UIViewController {

    // MARK: - Private variables

    private let contactInfoComponent = ContactInfoComponent()

    // MARK: - External dependencies

    var output: NewContactScreenOutput!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupViewConstraints()
    }
}

// MARK: - View Setup

private extension NewContactScreen {
    func setupView() {
        view.addSubviews(views: contactInfoComponent)
        title = "New Contact"

        contactInfoComponent
            .configure(with:
                        .init(elements: [
                            .init(title: "Enter first name"),
                            .init(title: "Enter last name"),
                            .init(title: "Enter phone number")
                        ],
                        handler: {
                            let newContact = self.composeContact()
                            self.output?.save(contact: newContact)
                            self.showContactsScreen()
                        }
                        )
            )
    }
}

// MARK: - Layout Setup

private extension NewContactScreen {
    func setupViewConstraints() {
        NSLayoutConstraint.activate([
            contactInfoComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contactInfoComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contactInfoComponent.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contactInfoComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - Composing Contact

private extension NewContactScreen {
    func composeContact() -> Contact {
        let contactFragmentsArray = contactInfoComponent.getStackElements()
        var newContact = Contact(name: "", surname: "", number: "")

        newContact.name = contactFragmentsArray[0].getTextValue()
        newContact.surname = contactFragmentsArray[1].getTextValue()
        newContact.number = contactFragmentsArray[2].getTextValue()

        return newContact
    }
}

extension NewContactScreen {
    func showContactsScreen() {
        output?.showContactsScreen()
    }
}
