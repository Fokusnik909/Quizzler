//
//  Question.swift
//  Quizzler
//
//  Created by Артур  Арсланов on 01.08.2023.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], r: String) {
        text = q
        answers = a
        rightAnswer = r
    }
}
