//
//  Person.swift
//  ContactsListApp
//
//  Created by Samoilik Hleb on 05/03/2025.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
    
    static func generateRandomContacts(from dataStore: DataStore) -> [Person] {
        var contacts: [Person] = []
        
        dataStore.name.shuffle()
        dataStore.surname.shuffle()
        dataStore.email.shuffle()
        dataStore.phoneNumber.shuffle()
        
        let numberOfContacts = min(dataStore.name.count, dataStore.surname.count, dataStore.email.count, dataStore.phoneNumber.count)
        
        for index in 0..<numberOfContacts {
            let newContact = Person(
                name: dataStore.name[index],
                surname: dataStore.surname[index],
                phoneNumber: dataStore.phoneNumber[index],
                email: dataStore.email[index]
            )
            contacts.append(newContact)
        }
        
        return contacts
    }
}

let dataStore = DataStore()
let contacts = Person.generateRandomContacts(from: dataStore)
