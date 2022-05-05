//
//  DetailsScreen.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct DetailsScreen: View {
    let contact: Person

    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            Divider()
            
            ContactRows(contact: contact)
            
            Spacer()
        }
        .navigationTitle(contact.fullName)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen(contact: Person.getPersonList().first ?? Person(id: 1, name: "Tim", surname: "Cook", phone: "113091904", email: "@mail.ru"))
    }
}

