//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Michael Filippini on 7/9/18.
//  Copyright © 2018 Michael Filippini. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var name : String
    var forClass : String
    var dueDate : String
    var description : String
    
    init(name: String, forClass: String, dueDate: String, description: String){
        self.name = name
        self.forClass = forClass
        self.dueDate = dueDate
        self.description = description
    }
}
