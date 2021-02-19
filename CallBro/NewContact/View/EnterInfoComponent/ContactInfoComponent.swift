//
//  ContactInfoComponent.swift
//  CallBro
//
//  Created by AndUser on 22.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class ContactInfoComponent: UIView {

    typealias ButtonHandler = () -> Void

    // MARK: - Private variables

    private var closureHandler: ButtonHandler?

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8

        return stackView
    }()

    private let addContactButton: CustomButton = {
        let button = CustomButton()
        button.setTitle("Add contact", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 15
        button.addTarget(self,
                                action: #selector(tapAddContact),
                                for: UIControl.Event.touchUpInside)

        return button
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray

        setupComponentsConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration

extension ContactInfoComponent {

    struct Model {
        let elements: [InputElement.Model]
        let handler: ButtonHandler
    }

    func configure(with model: Model) {
        closureHandler = model.handler
        createElement(with: model.elements)
    }
}

// MARK: - Create Views

extension ContactInfoComponent {
    func createElement(with model: [InputElement.Model]) {
        model.forEach {
            let inputElement = InputElement()
            inputElement.configure(with: $0)

            NSLayoutConstraint.activate([
                inputElement.heightAnchor.constraint(equalToConstant: 79),
            ])
            stackView.addArrangedSubview(inputElement)
        }
    }
}

// MARK: - Layout Setup

extension ContactInfoComponent {
     func setupComponentsConstraints() {
        addSubviews(views: stackView, addContactButton)
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
               stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
               stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
               stackView.topAnchor.constraint(equalTo: topAnchor, constant: 118),

               addContactButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
               addContactButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
               addContactButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 55),
               addContactButton.heightAnchor.constraint(equalToConstant: 58)
           ])
       }
}

// MARK: - Button Actions

private extension ContactInfoComponent {
    @objc func tapAddContact() {
        closureHandler?()
    }
}

// MARK: - Component Accessors

extension ContactInfoComponent {
    func getStackElements() -> [InputElement] {
        return stackView.arrangedSubviews as! [InputElement]
    }
}
