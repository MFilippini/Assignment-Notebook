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
    @IBOutlet weak var assignmentDescription: UITextView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

