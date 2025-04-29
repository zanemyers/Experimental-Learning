//
//  LocationDetail.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct LocationDetail: View {
    @Environment(ModelData.self) var modelData
    var location: OutreachLocation
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: location.locationCoordinate)
                .frame(height: 300)
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title)
                
                Divider()
                
                Text(location.address)
                
            }.padding()
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LocationDetail(location: ModelData().outreachLocations[0])
        .environment(ModelData())
}

