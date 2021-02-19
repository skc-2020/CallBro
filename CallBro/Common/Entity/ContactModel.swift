//
//  ContactModel.swift
//  CallBro
//
//  Created by AndUser on 20.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

struct Contact {
    var name: String
    var surname: String
    var number: String
}

// MARK: - Dummy Contacts

let contact1 = Contact(name: "Joe", surname: "Black", number: "257")
let contact2 = Contact(name: "Bill", surname: "Jackson", number: "243423457")
let contact3 = Contact(name: "John", surname: "White", number: "325743234")

var contactBook: [Contact] = [
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
    contact1, contact2, contact3,
]
