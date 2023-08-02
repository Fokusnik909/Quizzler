//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Артур  Арсланов on 01.08.2023.
//

import Foundation


struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], r: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], r: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], r: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], r: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], r: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], r: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], r: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], r: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], r: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], r: "Australia")
    ]
    var questionNumber = 0
    var score = 0
    
    
    func getAnswers() -> [String]{
        quiz[questionNumber].answers
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func getScore() -> Int{
       score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
