//
//  LocationList.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI

struct LocationList: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.outreachLocations) {location in
                    NavigationLink {
                        LocationDetail(location: location)
                    } label: {
                        LocationRow(location: location)
                    }
                    .navigationTitle("Location List")
                }
            }
        } detail: {
            Text("Select a Location")
        }
    }
}

#Preview {
    LocationList()
        .environment(ModelData())
}
