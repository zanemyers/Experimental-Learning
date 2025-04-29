//
//  ContentView.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .patients

    enum Tab {
        case patients
        case locations
        case settings
    }
    
    var body: some View {
        TabView(selection: $selection) {
            PatientList()
                .tabItem {
                    Label("Patients", systemImage: "person.2")
                }
                .tag(Tab.patients)
            
            LocationList()
                .tabItem {
                    Label("Locations", systemImage: "mappin.and.ellipse")
                }
                .tag(Tab.locations)
            
            ProfileDetails()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(Tab.settings)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
