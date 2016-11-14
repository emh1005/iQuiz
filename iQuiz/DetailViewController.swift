//
//  DetailViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/13/16.
//  Copyright © 2016 emh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let commonViewController = CommonViewController()
    let defaults = UserDefaults.standard
    
    private var counts = DetailViewController.getCount()
    
    private static func getCount() -> Int {
        let counts = UserDefaults.standard.integer(forKey: "count")
        NSLog ("\(counts)")
        return counts as Int
    }
    
    private var answer = DetailViewController.getAnswer()
    
    private static func getAnswer() -> Int {
        let answer = UserDefaults.standard.integer(forKey: "answer")
        NSLog ("\(answer)")
        return answer as Int
    }
    
    private var rights = DetailViewController.getRights()
    
    private static func getRights() -> Int {
        let rights = UserDefaults.standard.integer(forKey: "right")
        NSLog ("right\(rights)")
        return rights as Int
    }
    
    
    /*private static func getAnswer() -> String {
        var answer = UserDefaults.standard.string(forKey: "answer")
        NSLog ("\(answer)")
        if answer == nil {
            answer = "answer"
        }
        NSLog ("\(answer)")
        return answer! as String
    }*/
    
   /* var questions: [String] = ["1+1=?", "2*3=?", "10/2=?", "8-3=?"]
    /*var answers: Dictionary< Int, Array<String>> = [
        2 : ["1", "2", "3", "4"],
        3 : ["2", "4", "6", "8"],
        1 : ["5", "4", "3", "2"],
        4 : ["2", "3", "4", "5"]
    ]*/
    var answers: Array<Array<String>> = [["1", "2", "3", "4", "2"], ["2", "4", "6", "8", "3"], ["5", "4", "3", "2", "1"], ["2", "3", "4", "5", "4"]]*/
    @IBOutlet var answersGroup: [UIButton]!
    @IBOutlet weak var questionText: UILabel!
    //private var q = quiz.shared
    //var answer: String = ""
    //var rightCount: Int = 0
    //var qa: Bool = true
    @IBOutlet var nextButton: [UIButton]!

    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        for i in 0...3 {
            if sender == answersGroup[i] {
                sender.isEnabled = true
                answer = i + 1
                defaults.set(answer, forKey: "answer")
            } else {
                answersGroup[i].isEnabled = false
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if counts < commonViewController.questions.count {
        nextButton[1].isEnabled = false
            nextButton[1].isHidden = true
        self.questionText.text = commonViewController.questions[counts]
        for i in 0...3 {
            self.answersGroup[i].setTitle(commonViewController.answers[counts][i], for: .normal)
        }
        } else {
            switch rights {
            case 0: questionText.text = "AWW :( \(rights) out of \(commonViewController.questions.count)"
            case 1: self.questionText.text = "Need more work! \(rights) out of \(commonViewController.questions.count)"
            case 2: questionText.text = "Getting there! \(rights) out of \(commonViewController.questions.count)"
            case 3: questionText.text = "Almost! \(rights) out of \(commonViewController.questions.count)"
            default: questionText.text = "Awesome! \(rights) out of \(commonViewController.questions.count)"

            }
            for i in 0...3 {
                //answersGroup[i].isEnabled = false
                answersGroup[i].isHidden = true
            }
            nextButton[0].isEnabled = false
            nextButton[0].isHidden = true
            nextButton[1].isEnabled = true
            nextButton[1].isHidden = false
        }

        /*} else {
        self.answerText.text = answers[count][4]
        if answer == answers[count][4] {
            self.correct.text = "RIGHT!!!!"
            self.correct.textColor = UIColor.green
            rightCount += 1
        } else {
            self.correct.text = "Wrong :("
            self.correct.textColor = UIColor.red
        }
            qa = true
        }*/
        
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
