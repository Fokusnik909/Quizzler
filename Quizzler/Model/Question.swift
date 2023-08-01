//
//  Question.swift
//  Quizzler
//
//  Created by Артур  Арсланов on 01.08.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
