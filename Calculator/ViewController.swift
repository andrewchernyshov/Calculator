//
//  ViewController.swift
//  Calculator
//
//  Created by Andrew Chernyhov on 24.01.16.
//  Copyright © 2016 Andrei_Chernyshou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    var userIsInTheMiddleOfTyping = false
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        print("Digit = \(digit)")
        
        if userIsInTheMiddleOfTyping {
            displayLabel.text = displayLabel.text! + digit
        } else {
            displayLabel.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
    }
    
}