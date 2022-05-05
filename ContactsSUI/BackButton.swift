//
//  BackButton.swift
//  ContactsSUI
//
//  Created by Владимир Киселев on 05.05.2022.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image(systemName: "chevron.backward")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
            Text("Back")
        }
    }}
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
