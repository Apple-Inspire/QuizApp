//
//  Quebanks.swift
//  QuizApp
//
//  Created by yashn on 04/09/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import Foundation
class Quebanks {
    var list = [Questions]()
    
    init() {
    
    let item = Questions(text: "Apple made iPhone",correctAnswer : true)
        
    list.append(item)
    
    list.append(Questions(text: "Apple made pixel2",correctAnswer : false))
    list.append(Questions(text: "Apple made ipad",correctAnswer : true))
    list.append(Questions(text: "Apple made s7",correctAnswer : false))
    list.append(Questions(text: "Apple made macbook",correctAnswer : true))
    list.append(Questions(text: "Apple made predetor",correctAnswer : false))
    list.append(Questions(text: "Apple made iwatch",correctAnswer : true))
    list.append(Questions(text: "Apple made mac",correctAnswer : true))
    list.append(Questions(text: "Apple made magic mouse",correctAnswer : true))
    list.append(Questions(text: "Apple made magic keyboard",correctAnswer : true))
    list.append(Questions(text: "Apple made apple tv",correctAnswer : true))
    list.append(Questions(text: "Apple made oneplus 6",correctAnswer : false))
    list.append(Questions(text: "Bill made apple",correctAnswer : false))
    }
}
