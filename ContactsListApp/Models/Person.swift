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
        return "\(surname) \(name)"
    }
}

final class DataStore {
    var name = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Charles",
        "Thomas",
        "Christopher",
        "Daniel",
        "Matthew",
        "Anthony",
        "Mark"
    ]
    var surname = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Miller",
        "Davis",
        "García",
        "Rodriguez",
        "Wilson",
        "Martínez",
        "Hernández",
        "Lopez",
        "Gonzalez",
        "Perez"
    ]
    var email = [
        "swift@example.com",
        "c++@example.com",
        "python@example.com",
        "java@example.com",
        "kotlin@example.com",
        "go@example.com",
        "ruby@example.com",
        "php@example.com",
        "js@example.com",
        "rust@example.com",
        "csharp@example.com",
        "dart@example.com",
        "sql@example.com",
        "perl@example.com",
        "scala@example.com"
    ]
    var phoneNumber = [
        "+79161234567",
        "+79261234568",
        "+79371234569",
        "+79481234570",
        "+79591234571",
        "+79601234572",
        "+79711234573",
        "+79821234574",
        "+79931234575",
        "+79041234576",
        "+79151234577",
        "+79261234578",
        "+79371234579",
        "+79481234580",
        "+79591234581"
    ]
    
    func generateRandomContacts() -> [Person] {
        var contacts: [Person] = []
        
        name.shuffle()
        surname.shuffle()
        email.shuffle()
        phoneNumber.shuffle()
        
        let numberOfContacts = min(name.count, surname.count, email.count, phoneNumber.count)
        
        for index in 0..<numberOfContacts {
            let newContact = Person(
                name: name[index],
                surname: surname[index],
                phoneNumber: phoneNumber[index],
                email: email[index]
            )
            contacts.append(newContact)
        }
        
        return contacts
    }
}

let dataStore = DataStore()
var peopleList = dataStore.generateRandomContacts()
