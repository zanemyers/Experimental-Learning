//
//  ModelData.swift
//  RealWorldUseCase
//
//  Created by Zane Myers on 2/19/25.
//

import Foundation
import Observation

@Observable
class ModelData {
    var outreachLocations: [OutreachLocation] = load("outreachData.json")
    var patients: [Patient] = load("patientData.json")
    var user = User.default
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
