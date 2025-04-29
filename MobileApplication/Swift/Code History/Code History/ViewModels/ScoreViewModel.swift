//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Zane Myers on 3/5/25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}
