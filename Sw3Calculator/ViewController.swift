//
//  ViewController.swift
//  Sw3Calculator
//
//  Created by Gábor Benkő on 2017. 03. 21..
//  Copyright © 2017. Gábor Benkő. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleOfTyping = false
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                display.text = String(Double.pi)
            default:
                break
            }
        }
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping {
            let textCurrentInDisplay = display.text!
            display.text = textCurrentInDisplay + digit
        } else {
            display.text = digit
            userIsInMiddleOfTyping = true
        }
    }
}

