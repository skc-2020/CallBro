//
//  ViewConfiguration.swift
//  CallBro
//
//  Created by AndUser on 20.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

protocol ViewConfiguration {

    associatedtype Model
    func configure(with model: Model)
}
