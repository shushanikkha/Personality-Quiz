//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Shushan Khachatryan on 10/14/18.
//  Copyright © 2018 Shushan Khachatryan. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
 
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your frinends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus in the details. Slow and steady wins the race."
        }
    }
    
}

