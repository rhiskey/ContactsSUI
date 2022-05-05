//
//  ContentView.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var persons: [Person] = Person.getPersonList()
    
    var body: some View {
        NavigationView{
            TabView {
                ContactsScreen(contacts: persons)
                    .tabItem {
                        Label("Contacts", systemImage: "person.3")
                    }
                NumbersScreen()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
