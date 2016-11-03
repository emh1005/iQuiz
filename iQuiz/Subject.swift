//
//  Task.swift
//  ToDoList498
//
//  Created by Sam Bender on 11/1/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class Subject: NSObject, NSCoding {

    var title: String
    var desc: String
    
    // MARK: NSCoding
    
    init(title: String, desc: String) {
        self.title = title
        self.desc = desc
    }
    
    required convenience init?(coder decoder: NSCoder) {
        guard let title = decoder.decodeObject(forKey: "title") as? String,
              let desc = decoder.decodeObject(forKey: "desc") as? String
                  else { return nil }
        
        self.init(
            title: title,
            desc: desc
        )
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(self.title, forKey: "title")
        aCoder.encode(self.desc, forKey: "desc")
    }
}
