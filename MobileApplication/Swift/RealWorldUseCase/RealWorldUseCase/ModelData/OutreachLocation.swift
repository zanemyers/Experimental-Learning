//
//  OutreachLocation.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import Foundation
import SwiftUI
import CoreLocation


struct OutreachLocation: Hashable, Codable, Identifiable, Locatable {
    var id: Int
    var name: String
    var address: String
    var coordinates: Coordinates
}
