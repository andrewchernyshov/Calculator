//
//  ViewController.swift
//  Calculator
//
//  Created by Andrei Chernyshou on 2/11/16.
//  Copyright © 2016 Epam.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userIsInTheMiddleOfTyping = false
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func digitPressed(sender: UIButton) {
        
        let digit = sender.titleLabel?.text!
        
        if userIsInTheMiddleOfTyping {
            displayLabel.text! += digit!
        } else {
            displayLabel!.text = digit!
            userIsInTheMiddleOfTyping = true
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

