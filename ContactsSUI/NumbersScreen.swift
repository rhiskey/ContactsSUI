//
//  NumbersScreen.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct NumbersScreen: View {
    @State private var isPresented = false
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            Section(header: Text(contact.fullName)) {
                Button(action: { isPresented.toggle() }) {
                    ContactRows(contact: contact)
                }
                .sheet(isPresented: $isPresented) {
                    DetailsScreen(isPresented: $isPresented, contact: contact)
                }
            }
            .headerProminence(.increased)
        }
        .listStyle(.insetGrouped)
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen(contacts: Person.getPersonList())
    }
}
