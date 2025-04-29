//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Zane Myers on 2/11/25.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
