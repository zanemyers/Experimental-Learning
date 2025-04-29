//
//  Patient.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import Foundation
import SwiftUI
import CoreLocation


struct Patient: Hashable, Codable, Identifiable, Locatable {
    var id: Int
    var name: String
    var age: Int
    var guardianName: String
    var guardianPhoneNumber: String
    var guardianEmail: String
    var disabilities: [String]
    var notes: String
    var homeAddress: String
    var coordinates: Coordinates
    var outreachLocation: OutreachLocation?
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    static let `default` = Patient(
        id: ModelData().patients.count + 1,
        name: "",
        age: 0,
        guardianName: "",
        guardianPhoneNumber: "",
        guardianEmail: "",
        disabilities: [],
        notes: "",
        homeAddress: "",
        coordinates: Coordinates(latitude: 0, longitude: 0),
        outreachLocation: nil,
        imageName: "defaultPatient"
    )
}

