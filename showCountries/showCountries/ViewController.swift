//
//  ViewController.swift
//  showCountries
//
//  Created by Pravara Kant on 28/03/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var countrieslist = [String]()
    @IBOutlet weak var countryNameFilter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func searchCountries(_ sender: Any) {

        let countries_api = countriesAPI()
        if ((countryNameFilter.text?.isEmpty)!) {
            print("error")
        }
        else {
            let nameFilter = countryNameFilter.text!
            countries_api.getCountries(nameFilter:nameFilter, completion: {(countries) in
                self.countrieslist = countries
            })
        }
        
    }
}

