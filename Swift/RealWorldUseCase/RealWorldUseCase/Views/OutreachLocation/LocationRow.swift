//
//  LocationRow.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct LocationRow: View {
    @Environment(ModelData.self) var modelData
    var location: OutreachLocation
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LocationRow(location: ModelData().outreachLocations[0])
        .environment(ModelData())
}
