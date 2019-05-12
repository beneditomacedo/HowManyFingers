//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Benedito Macedo on 12/05/19.
//  Copyright © 2019 bamacedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let heldFingers = Int.random(in: 1 ... 5)
    
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func checkGuess(_ sender: Any) {
        
        // dismiss the keyboard
        userGuess.resignFirstResponder()
        
        if let guess = userGuess.text {
            if let guessInt = Int(guess) {
                if guessInt == heldFingers {
                    result.text = "Great!!! You're right"
                } else {
                    result.text = "You're wrong. Let's try again"
                }
            }
        }
        
        // clear textfield
        userGuess.text = ""
        
        // focus in textfield
        userGuess.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userGuess.delegate = self
        print("heldFingers is \(heldFingers)")
        
    }


}

