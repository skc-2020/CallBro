//
//  InputElement.swift
//  CallBro
//
//  Created by AndUser on 23.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class InputElement: UIView {

    // MARK: - Private variables

    private let inputLabel: CustomLabel = {
        let inputLabel = CustomLabel()
        inputLabel.textAlignment = .center

        return inputLabel
    }()

    private let inputTextField: UITextField = {
         let textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.isUserInteractionEnabled = true
        textField.translatesAutoresizingMaskIntoConstraints = false

        return textField
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupViewConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration

extension InputElement {

    struct Model {
        let title: String
    }

    func configure(with model: Model) {
        inputLabel.text = model.title
    }
}

// MARK: - Private Setup

private extension InputElement {
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(views: inputTextField, inputLabel)
    }
}

// MARK: - Setup Layout

private extension InputElement {
    func setupViewConstraints() {
        NSLayoutConstraint.activate([
            inputLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            inputLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            inputLabel.topAnchor.constraint(equalTo: topAnchor),
            inputLabel.heightAnchor.constraint(equalToConstant: 37),

            inputTextField.leadingAnchor.constraint(equalTo: leadingAnchor),
            inputTextField.trailingAnchor.constraint(equalTo: trailingAnchor),
            inputTextField.topAnchor.constraint(equalTo: inputLabel.bottomAnchor, constant: 8),
        ])
    }
}

// MARK: - TextField Accessors

extension InputElement {

    func getTextValue() -> String {
        return inputTextField.text ?? ""
    }

}
