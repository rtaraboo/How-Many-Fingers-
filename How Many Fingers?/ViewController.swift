//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Rosario Tarabocchia on 9/9/15.
//  Copyright (c) 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var guess: UITextField!
    
    @IBOutlet var resultsLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = Int(guess.text!)
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultsLabel.text = "You are CORRECT!!!"
                
            }
            
            else {
                resultsLabel.text = "Wrong! It was \(randomNumber). TRY AGAIN!"
            }
            
            
        }
        
        else {
            
            resultsLabel.text = "Please enter a number from 0 to 5!"
            
        }
        print(guess.text)
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

