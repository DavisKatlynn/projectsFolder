//
//  ViewController.swift
//  rockPaperScissors2.0CodeChallenge
//
//  Created by Katlynn Davis on 11/15/22.
//

import UIKit

class ViewController: UIViewController {


@IBOutlet weak var opponentLabel: UILabel!
@IBOutlet weak var resultLabel: UILabel!
@IBOutlet weak var rockButton: UIButton!
@IBOutlet weak var paperButton: UIButton!
@IBOutlet weak var scissorsButton: UIButton!






override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    Hide()


}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}



func Hide() {
    opponentLabel.isHidden = true
    resultLabel.isHidden = true
}

func unHide() {
    opponentLabel.isHidden = false
    resultLabel.isHidden = false
}


var a = Int()

var randomNumber = Int()

func randomChoice() {

    randomNumber = Int(arc4random() % 3)
    NSLog("randomNumber%ld", randomNumber)



}



func gameOn() {

    switch(randomNumber) {

    case 0:
        opponentLabel.text = "The opponent chose : ROCK"
        if a == 0 {
            resultLabel.text = "DRAW"
        } else {
            if a == 1 {
                resultLabel.text = "YOU WON!"
            }
            if a == 2 {
                resultLabel.text = "YOU LOST!"
                }
        }
        unHide()
        break

    case 1:
        opponentLabel.text = "The opponent chose: PAPER"
        if a == 0 {
            resultLabel.text = "YOU LOST!"
        } else {
            if a == 1 {
                resultLabel.text = "DRAW"
            }
            if a == 2 {
                resultLabel.text = "YOU WON!"
            }
        }
        unHide()
        break

    case 2:
        opponentLabel.text = "The opponent chose: SCISSORS"
        if a == 0 {
            resultLabel.text = "YOU WON!"
        } else {
            if a == 1 {
                resultLabel.text = "YOU LOST!"
            }
            if a == 2 {
                resultLabel.text = "DRAW"
            }
        }
        unHide()
        break

    default:
        break


    }
}


@IBAction func rockButton(sender: AnyObject) {

    a = 0
    randomChoice()
    gameOn()

}


@IBAction func paperButton(sender: AnyObject) {

    a = 1
    randomChoice()
    gameOn()
}



@IBAction func scissorsButton(sender: AnyObject) {

    a = 2
    randomChoice()
    gameOn()

}



}

