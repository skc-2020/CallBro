//
//  ContactDetailScreen.swift
//  CallBro
//
//  Created by AndUser on 15.02.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class ContactDetailScreen: UIViewController {

    // MARK: - Private variables

    private let nameLabel: CustomLabel = {
        let inputLabel = CustomLabel()
        inputLabel.textAlignment = .center

        return inputLabel
    }()

    private let surnameLabel: CustomLabel = {
        let inputLabel = CustomLabel()
        inputLabel.textAlignment = .center

        return inputLabel
    }()

    private let telephoneNumberLabel: CustomLabel = {
        let inputLabel = CustomLabel()
        inputLabel.textAlignment = .center

        return inputLabel
    }()

    // MARK: - Initializers

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray

        setupView()
        setupViewConstraints()
    }
}

// MARK: - Configuration

extension ContactDetailScreen {

    struct Model {
        let name: String
        let surname: String
        let telephoneNumber: String
    }

    func configure(with model: Model) {
        nameLabel.text = model.name
        surnameLabel.text = model.surname
        telephoneNumberLabel.text = model.telephoneNumber
    }
}

// MARK: - Setup View

private extension ContactDetailScreen {
    func setupView() {
        view.addSubviews(views: nameLabel, surnameLabel, telephoneNumberLabel)
    }
}

// MARK: - Layout Setup

extension ContactDetailScreen {
    func setupViewConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 118),

            surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surnameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            surnameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),

            telephoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            telephoneNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            telephoneNumberLabel.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 20),
        ])
    }
}
