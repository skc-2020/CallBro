//
//  ContactsViewController.swift
//  CallBro
//
//  Created by AndUser on 19.01.2021.
//  Copyright © 2021 Me. All rights reserved.
//

import UIKit

final class ContactsScreen: UIViewController {

    // MARK: - Private Variables

    private let tableview = TableView()

    // MARK: - External dependencies

    var output: ContactsScreenOutput!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        configureView()
        setupTableViewConstraints()
    }

    override func viewWillAppear(_ animated: Bool) {
        tableview.reloadData()
    }

}

// MARK: - DataSource & Delegate

extension ContactsScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return contactBook.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = contactBook[indexPath.row].name

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contactDetailScreen = ContactDetailScreen()

        contactDetailScreen.configure(with: .init(name: contactBook[indexPath.row].name,
                                                  surname: contactBook[indexPath.row].surname,
                                                  telephoneNumber: contactBook[indexPath.row].number))

        navController.pushViewController(contactDetailScreen, animated: true)
    }

}

// MARK: - Configure Table View

extension ContactsScreen {
    func configureView() {
        configureNavigationItem()
        view.addSubview(tableview)
        tableview.configure(with: .init(delegate: self, dataSource: self))
    }
}

// MARK: - Setup Constraints

extension ContactsScreen {
    func setupTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.topAnchor.constraint(equalTo: view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

// MARK: - Configure Navigation Item

extension ContactsScreen {
    func configureNavigationItem() {
        title = "Contacts"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add",
                                                            style: .plain,
                                                            target: self,
                                                            action:  #selector(onTapAddButton))
    }

    @objc
    func onTapAddButton() {
        output?.didTapAddButton()
    }
}
