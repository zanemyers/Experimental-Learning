//
//  MapView.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region))) {
            Annotation("Pinned Location", coordinate: coordinate) {
                Button(action: openInGoogleMaps) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                }
            }
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    private func openInGoogleMaps() {
        let latitude = coordinate.latitude
        let longitude = coordinate.longitude
        
        if let url = URL(string: "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=driving"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else if let webUrl = URL(string: "https://www.google.com/maps/dir/?api=1&destination=\(latitude),\(longitude)") {
            UIApplication.shared.open(webUrl, options: [:], completionHandler: nil)
        }
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
