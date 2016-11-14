//
//  quiz.swift
//  iQuiz
//
//  Created by studentuser on 11/13/16.
//  Copyright © 2016 emh. All rights reserved.
//

import UIKit

class Quiz {
   // static let shared = Quiz()
   // let title: String
   // let desc: String
    let questions: [String]
    let answers: [[String]]
    //let answer: Int
    
    // designated initializer for a Monster
    init(
        //title: String, desc: String, 
        questions: [String], answers: [[String]]
        //, answer: Int
        ) {
        //self.title = title
      //  self.desc = desc
        self.questions = questions
        self.answers = answers
        //self.answer = answer
    }
    
    
/*        let defaults = UserDefaults.standard
 var histories = defaults.array(forKey: "history")
 if histories == nil {
 histories = Array()
 }
 histories!.append(history)
 defaults.set(histories, forKey: "history")*/
    

}
