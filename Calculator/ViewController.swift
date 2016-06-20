//
//  ViewController.swift
//  Calculator
//
//  Created by Marcio Nicolau on 20/06/16.
//  Copyright © 2016 Marcio Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicaSymbol = sender.currentTitle {
            if mathematicaSymbol == "π" {
                display.text = String(M_PI)
            }
        }
        
    }
    
    
}

