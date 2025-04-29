//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Zane Myers on 2/10/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
            
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
