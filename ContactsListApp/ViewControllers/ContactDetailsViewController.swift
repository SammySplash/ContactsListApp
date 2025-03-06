//
//  ContactDetailsViewController.swift
//  ContactsListApp
//
//  Created by Samoilik Hleb on 05/03/2025.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        self.navigationItem.title = contact.fullName
        
        phoneNumberLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = contact.email
        phoneNumberLabel.attributedText = makeBoldText(title: "Phone:", value: contact.phoneNumber)
        emailLabel.attributedText = makeBoldText(title: "Email:", value: contact.email)
        
        func makeBoldText(title: String, value: String) -> NSAttributedString {
            let boldFont = UIFont.boldSystemFont(ofSize: 19)
            let attributes: [NSAttributedString.Key: Any] = [.font: boldFont]
            
            let attributedString = NSMutableAttributedString(string: "\(title) \(value)", attributes: attributes)
            
            return attributedString
        }
    }
}
