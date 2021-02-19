//
//  UIViewExtensions.swift
//  CallBro
//
//  Created by AndUser on 22.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

// MARK: - UIView Extension

extension UIView {
    func addSubviews(views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}

// MARK: - UIStackView Extension

extension UIStackView {
    func addArrangedSubview(views: UIView...) {
        for view in views {
            self.addArrangedSubview(view)
        }
    }
}
