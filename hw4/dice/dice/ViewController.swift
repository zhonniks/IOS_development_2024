//
//  ViewController.swift
//  egg timer
//
//  Created by Zhannel Omarova on 18.10.2024.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Here is array of UIImages of dice
    let diceImages = [
        UIImage(named: "1"),
        UIImage(named: "2"),
        UIImage(named: "3"),
        UIImage(named: "4"),
        UIImage(named: "5"),
        UIImage(named: "6")
    ]

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBAction func rollDiceButton(_ sender: Any) {
        let nextLeftDice = diceImages.randomElement()
        var nextRightDice = diceImages.randomElement()
        while nextLeftDice == nextRightDice {
            nextRightDice = diceImages.randomElement()
        }
        leftDice.image = nextLeftDice ?? leftDice.image
        rightDice.image = nextRightDice ?? rightDice.image
        
    }
    //Bonus task
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDiceButton(UIButton())
        }
    }

}

