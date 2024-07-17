//
//  Game.swift
//  Code History
//
//  Created by Ibrahim Awoleiro on 2/9/24.
//

import Foundation


struct Game{
    
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses: [Question:Int] = [:]
    private(set) var currentQuestionIndex: Int = 0
    private(set) var isOver:Bool = false

    mutating func makeGuessForCurrentQuestion(atIndex index: Int) -> Void{
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus(){
        if currentQuestionIndex < questions.count - 1{
            currentQuestionIndex += 1
        }else{
            self.isOver = true
        }
    }
    
    var numberOfQuestions: Int{
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var guessCount : (correct: Int, incorrect: Int){
        var count : (correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses{
            if question.correctAnswerIndex == guessedIndex{
                count.correct+=1
            }else{
                count.incorrect+=1
            }
        }
        return count
    }
}
