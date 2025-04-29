//
//  BottomTextView.swift
//  Code History
//
//  Created by Zane Myers on 3/5/25.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
        .padding(.bottom)
    }
}

#Preview {
    BottomTextView(str: "Okay!")
}
