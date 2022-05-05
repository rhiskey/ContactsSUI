//
//  ContactsScreen.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct ContactsScreen: View {
    @State private var isPresented = false
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: DetailsScreen(isPresented: $isPresented, contact: contact)) {
                Text("\(contact.fullName)")
            }
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen(contacts: Person.getPersonList())
    }
}
