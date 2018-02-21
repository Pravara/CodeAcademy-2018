//
//  ViewController.swift
//  toDoList
//
//  Created by Pravara Kant on 27/01/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItemButtonTapped(_ sender: Any) {
        let title = titleTextField.text
        
        let description = descriptionTextView.text
        
        
        print("title = \(String(describing: title)) description = \(String(describing: description))")
        
    }
    
}

