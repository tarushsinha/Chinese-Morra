//
//  InterfaceController.swift
//  Game Watch WatchKit Extension
//
//  Created by Tarush Sinha on 6/13/15.
//  Copyright (c) 2015 Tarush Sinha. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBOutlet var guessSlider: WKInterfaceSlider!         // the slider

    @IBOutlet var guessLabel: WKInterfaceLabel!     // the label displaying the guess number
    @IBOutlet var resultLabel: WKInterfaceLabel!    // Wrong/Correct Label
    
    var guessNumber = 3
    
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess: \(guessNumber)")
    }
    
    @IBAction func startGuess() {
        var randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("Congratualations! You win!")
        } else {
            resultLabel.setText("Wrong! The number is \(randomNumber)")
        }
    }

}
