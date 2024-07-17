//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Ibrahim Awoleiro on 2/11/24.
//

import Foundation


struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
