//
//  Game.swift
//  Code History
//
//  Created by Zane Myers on 3/5/25.
//

struct Game {
    // privat properties
    private(set) var currentQuestionIndex: Int = 0
    private(set) var guesses: [Question: Int] = [:]
    private(set) var isOver: Bool = false
    private let questions: [Question] = Question.allQuestions.shuffled()
    
    // Computed Properties
    var numberOfQuestions: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // mutating methods
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            
            // if this is the last question update isOver to true so we move to the end screen
            if currentQuestionIndex == questions.count - 1 {
                isOver = true
            }
        }
    }
}
