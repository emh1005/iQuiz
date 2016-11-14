//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/13/16.
//  Copyright © 2016 emh. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    let commonViewController = CommonViewController()
    let defaults = UserDefaults.standard
    
    private var counts = AnswerViewController.getCount()
    
    private static func getCount() -> Int {
        let counts = UserDefaults.standard.integer(forKey: "count")
        NSLog ("c\(counts)")
        return counts as Int
    }
    
    private var answer = AnswerViewController.getAnswer()
    
    private static func getAnswer() -> Int {
        let answer = UserDefaults.standard.integer(forKey: "answer")
        NSLog ("a\(answer)")
        return answer as Int
    }

    private var rights = AnswerViewController.getRights()
    
    private static func getRights() -> Int {
        let rights = UserDefaults.standard.integer(forKey: "right")
        NSLog ("right\(rights)")
        return rights as Int
    }
    
    @IBOutlet weak var answerText: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var correct: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //commonViewController.count += 1
        self.questionText.text = commonViewController.questions[counts]
        self.answerText.text = commonViewController.answers[counts][answer - 1]
        if String(answer) == commonViewController.answers[counts][4] {
            self.correct.text = "RIGHT!!!!"
            self.correct.textColor = UIColor.green
            rights += 1
            defaults.set(rights, forKey: "right")
        } else {
            self.correct.text = "Wrong :("
            self.correct.textColor = UIColor.red
        }
        counts += 1
        defaults.set(counts, forKey: "count")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
