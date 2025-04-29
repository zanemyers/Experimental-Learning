//
//  ItemDetailView.swift
//  Store
//
//  Created by Zane Myers on 3/5/25.
//


import SwiftUI

struct ItemDetailView: View {
    @State private var quantityRemaining = Int.random(in: 1...10)
    
    var itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            
            Spacer()
            
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            
            Text("Quantity Remaining: \(quantityRemaining)")
            
            Spacer()
            
            if quantityRemaining == 0 {
                NavigationLink(destination: Text("Go back to the store")) {
                    Text("Add one to your cart")
                }
            }
            else {
                Button {
                    if quantityRemaining > 0 {
                        quantityRemaining -= 1
                    }
                } label: {
                    Text("Add one to your cart")
                }
            }
            
            Spacer()
        }
    }
}


struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
