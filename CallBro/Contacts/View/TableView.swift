//
//  TableView.swift
//  CallBro
//
//  Created by AndUser on 20.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class TableView: UITableView {

    // MARK: - Initializers

    override init(frame: CGRect, style: Style) {
        super.init(frame: frame, style: style  )

        setupTableView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration

extension TableView: ViewConfiguration {

    struct Model {
        let delegate: UITableViewDelegate
        let dataSource: UITableViewDataSource
    }

    func configure(with model: Model) {
        translatesAutoresizingMaskIntoConstraints = false
        delegate = model.delegate
        dataSource = model.dataSource
    }
}

private extension TableView {
    func setupTableView() {
        self.register(UITableViewCell.self,
                      forCellReuseIdentifier: Constants.cellIdentifier)
    }
}

// MARK: - Constants

extension TableView {
    struct Constants {
        static let cellIdentifier = "Cell"
    }
}
