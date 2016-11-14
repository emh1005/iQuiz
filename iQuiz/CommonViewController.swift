//
//  CommonViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/13/16.
//  Copyright © 2016 emh. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {
    
    var questions: [String] = ["1+1=?", "2*3=?", "10/2=?", "8-3=?"]
    var answers: Array<Array<String>> = [["1", "2", "3", "4", "2"], ["2", "4", "6", "8", "3"], ["5", "4", "3", "2", "1"], ["2", "3", "4", "5", "4"]]
    var answer: String = ""
    var rightCount: Int = 0
    var count: Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()

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
