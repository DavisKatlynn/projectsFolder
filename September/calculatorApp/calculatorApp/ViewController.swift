//
//  ViewController.swift
//  calculatorApp
//
//  Created by Katlynn Davis on 9/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func allClearPressed(_ sender: UIButton) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        calculatorDisplay.text = "0"
    }
    @IBAction func positiveOrNegativePressed(_ sender: UIButton) {
        second = userInput
        let firstInput = calculatorDisplay.text
        if(function == "+/-")
        {
            calculatorDisplay.text = ""
            userInput += "* -1"
            calculatorDisplay.text! += userInput
            result = userInput * Double(-1)
            
        }
    }
    @IBAction func percentPressed(_ sender: UIButton) {
        function = "%"
        first = userInput
        userInput = ""
    }
    @IBAction func dividePressed(_ sender: UIButton) {
        function = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiplyPressed(_ sender: UIButton) {
        function = "*"
        first = userInput
        userInput = ""
    }
    @IBAction func subtractPressed(_ sender: UIButton) {
        function = "-"
        first = userInput
        userInput = ""
    }
    @IBAction func addPressed(_ sender: UIButton) {
        function = "+"
        first = userInput
        userInput = ""
    }
    @IBAction func equalsPressed(_ sender: UIButton)
    {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
    firstInput = Double(first)!
        secondInput = Double(second)!
        if(function == "+")
        {
            result = firstInput + secondInput
            calculatorDisplay.text = String(result)
        }
        else if (function == "-")
        {
            result = firstInput - secondInput
            calculatorDisplay.text = String(result)
        }
        else if (function == "*")
        {
            result = firstInput * secondInput
            calculatorDisplay.text = String(result)
        }
        else if (function == "%")
        {
            result = firstInput / 100
            calculatorDisplay.text = String(result)
        }
        else
        {
            result = firstInput / secondInput
            calculatorDisplay.text = String(result)
        }
    }
    @IBAction func dotPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "."
        calculatorDisplay.text! += userInput
    }
    @IBAction func zeroPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "0"
        calculatorDisplay.text = userInput
    }
    @IBAction func onePressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    @IBAction func twoPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    @IBAction func threePressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fourPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fivePressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sixPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sevenPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func eightPressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func ninePressed(_ sender: UIButton) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
}
    

