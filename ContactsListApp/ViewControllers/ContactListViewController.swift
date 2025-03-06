//
//  ContactListViewController.swift
//  ContactsListApp
//
//  Created by Samoilik Hleb on 05/03/2025.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var contactsList = contacts
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let contactsDetailsVC = segue.destination as? ContactDetailsViewController
        contactsDetailsVC?.contact = contactsList[indexPath.row]
    }
}

//MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsList.count
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
