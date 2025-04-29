//
//  BaseModel.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import CoreLocation

// Shared Coordinates struct
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

// Protocol for shared location functionality
protocol Locatable {
    var coordinates: Coordinates { get }
    var locationCoordinate: CLLocationCoordinate2D { get }
}

extension Locatable {
var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
