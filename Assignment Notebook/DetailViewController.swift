//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Michael Filippini on 7/9/18.
//  Copyright © 2018 Michael Filippini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var assignmentName: UITextField!
    @IBOutlet weak var assignmentClass: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    @IBOutlet weak var assignmentDescription: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if assignmentName != nil {
                assignmentName.text = assignment.name
                assignmentClass.text = assignment.forClass
                dueDate.text = assignment.dueDate
                assignmentDescription.text = assignment.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func viewDidDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.name = assignmentName.text!
            assignment.forClass = assignmentClass.text!
            assignment.dueDate = dueDate.text!
            assignment.description = assignmentDescription.text!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

