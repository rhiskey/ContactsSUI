//
//  Person.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        let dm = DataManager.shared
        
        var persons: [Person] = []
        
        let names = dm.names.shuffled()
        let surnames = dm.surnames.shuffled()
        let phones = dm.phones.shuffled()
        let emails = dm.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let user = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(user)
        }
        
        return persons
        
    }
}
