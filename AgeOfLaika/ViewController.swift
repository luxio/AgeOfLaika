//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Stéphane Lux on 24.09.14.
//  Copyright (c) 2014 LUXio IT-Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertToDogYearsButtonPressed(sender: UIButton) {
        dogYearsLabel.hidden =  false
        let dogYears = (humanYearsTextField.text as NSString).integerValue * 7
        dogYearsLabel.text = "\(dogYears)"
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        dogYearsLabel.hidden = false
        let humanYears = (humanYearsTextField.text as NSString).doubleValue
        var dogYears:Double
        
        if humanYears < 2 {
            dogYears = humanYears * 10.5
        } else {
            dogYears = 21 + (humanYears-2) * 4
        }
        dogYearsLabel.text = "\(dogYears)"
        humanYearsTextField.resignFirstResponder()
    }
    
}

