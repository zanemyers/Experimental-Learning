//
//  ContentView.swift
//  Handling Errors
//
//  Created by Zane Myers on 2/28/25.
//

import SwiftUI

struct ContentView: View {
    
    var variousGreetings: [String] = ["Bonjour", "Konnichiwa", "Jambo"]
    
    var body: some View {
            
            let greeting1 = variousGreetings[0]
            let greeting2 = variousGreetings[1]
            let greeting3 = variousGreetings[2]
            
            VStack {
                Text(greeting1)
                Text(greeting2)
                Text(greeting3)
            }
        }
}

#Preview {
    ContentView()
}
