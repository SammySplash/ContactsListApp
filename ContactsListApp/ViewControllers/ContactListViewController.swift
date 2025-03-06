//
//  ContactListViewController.swift
//  ContactsListApp
//
//  Created by Samoilik Hleb on 05/03/2025.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var contactsList = peopleList
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        peopleList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        content.textProperties.font = .boldSystemFont(ofSize: 17)
        
        cell.contentConfiguration = content
        
        return cell
    }
}
