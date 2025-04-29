//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Zane Myers on 2/6/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
