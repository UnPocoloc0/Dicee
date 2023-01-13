//
//  ViewController.swift
//  Dicee!
//
//  Created by Juuso Loikkanen on 13.1.2023.
//  Copyright © 2023 Simo Loikkanen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows me to reference UI element
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    /*refactor the code by making it simpler
     var leftDiceNumber = 1
     var rightDiceNumber = 5
     */
    
    // Needs to be an action!
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
        
    }
    // Generates random dice images and updates imageviews
    // Pack the functionality to one place and call it anywhere
    func updateDiceImages() {
        diceImageView1.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ][Int.random(in:0...5)]
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ][Int.random(in:0...5)]
        
        /* Refactor the code by making it shorter
         leftDiceNumber += 1
         rightDiceNumber -= 1
         */
        
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

