//
//  CustomButton.swift
//  CallBro
//
//  Created by AndUser on 22.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class CustomButton: UIButton {

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Configuration

private extension CustomButton {
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
