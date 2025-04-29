//
//  Therapist.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import Foundation
import SwiftUI

struct User: Hashable, Codable {
    var username: String
    var password: String
    var name: String = "Zane Myers"
    var email: String = "zane@example.com"
    var phoneNumber: String = "(555) 555-5555"
    
    static let `default` = User(username: "NewTherapist", password: "abcd1234")
}
