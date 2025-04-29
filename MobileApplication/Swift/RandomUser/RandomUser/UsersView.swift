//
//  ContentView.swift
//  RandomUser
//
//  Created by Zane Myers on 3/18/25.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
