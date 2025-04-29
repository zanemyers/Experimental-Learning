//
//  ContactsView.swift
//  AddressBookWithPropertyWrappers
//
//  Created by Ben Stone on 3/3/21.
//

import SwiftUI

struct ContactsView: View {
    @EnvironmentObject var viewModel: AddressBookViewModel
    
    var body: some View {
        ForEach(0..<viewModel.contactCount, id: \.self) { index in
            HStack {
                let contact = viewModel.contact(atIndex: index)
                VStack {
                    Text(contact.name)
                    Text(contact.displayPostalCode)
                        .font(.caption2)
                }
                Button(action: {
                    viewModel.toggleFavorite(atIndex: index)
                }) {
                    contact.isFavorite ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
            .environmentObject(AddressBookViewModel())
    }
}
