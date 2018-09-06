//
//  Questions.swift
//  QuizApp
//
//  Created by yashn on 04/09/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import Foundation

class Questions {
    let ans : Bool
    let queText : String
    
    init(text : String,correctAnswer : Bool)
    {
        queText = text
        ans = correctAnswer
    }
}
