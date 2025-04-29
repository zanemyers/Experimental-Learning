//
//  ContentView.swift
//  Store
//
//  Created by Zane Myers on 3/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(destination: ItemDetailView(itemName: "Shrimp Chips")) {
                    Text("Shrimp Chips")
                }
                Spacer()
            }
            .navigationTitle(Text("Ligaya's Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
