//
//  Person.swift
//  ContactListApp
//
//  Created by Paul Matar on 22.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var result: [Person] = []
        
        let data = DataManager()
        var names = Set(data.names)
        var surnames = Set(data.surnames)
        var phoneNumbers = Set(data.phoneNumbers)
        var emails = Set(data.emails)
        
        let count = min(names.count, surnames.count, phoneNumbers.count, emails.count)
        
        while result.count < count {
            result.append(
                Person(name: names.removeFirst(),
                       surname: surnames.removeFirst(),
                       phoneNumber: phoneNumbers.removeFirst(),
                       email: emails.removeFirst())
            )
        }
        
        return result
    }
}
