//
//  Tasks.swift
//  ToDoList498
//
//  Created by Sam Bender on 11/1/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class Subjects: NSObject {
    static let shared = Subjects()
    private (set) var list: [Subject] = Array()
    // a file named tasks in the documents directory
    private static let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] + "subjects"
    
    override init() {
        super.init()
        loadFromFile()
    }
    
    func loadFromFile() {
        let list = NSKeyedUnarchiver.unarchiveObject(withFile: Subjects.filePath) as? [Subject]
        if list != nil {
            self.list = list!
        }
    }
    
    func add(subject: Subject) {
        list.append(subject)
        NSKeyedArchiver.archiveRootObject(self.list, toFile: Subjects.filePath)
    }
   /*
    func remove(at: Int) {
        list.remove(at: at)
        NSKeyedArchiver.archiveRootObject(self.list, toFile: Tasks.filePath)
    }*/
}
