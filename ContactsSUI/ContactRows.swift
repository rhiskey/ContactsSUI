//
//  ContactRows.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct ContactRows: View {
    let contact: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image(systemName: "phone")
                Text("\(contact.phone)")
            }
            Divider()
            HStack {
                Image(systemName: "envelope")
                Text("\(contact.email)")
            }
        }
        .padding()
    }
}

struct ContactRows_Previews: PreviewProvider {
    static var previews: some View {
        ContactRows(contact: Person.getPersonList().first ?? Person(id: 1, name: "Tim", surname: "Cook", phone: "113091904", email: "@mail.ru"))
    }
}
