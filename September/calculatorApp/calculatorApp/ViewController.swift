//
//  ViewController.swift
//  calculatorApp
//
//  Created by Katlynn Davis on 9/22/22.
//


import UIKit
enum Operation {
    case divide
    case multiply
    case add
    case subtract
    case percent
    case positiveOrNegative
    case allClear
    
}


class ViewController: UIViewController{
    var previousNumberPressed = " "
    var operand: Operation?
    
    
    @IBOutlet weak var calculatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        guard let labelText = calculatedLabel.text, let newNum = sender.titleLabel?.text else {return}
        
        if labelText == "0.0" {
            calculatedLabel.text = newNum
        } else {
            calculatedLabel.text = labelText + newNum
        }
        
        
        
}
    
    
    
    
    @IBAction func calculations(_ sender: UIButton) {
        
        switch sender.titleLabel?.text {
        case "A/C":
            calculatedLabel.text = "0.0"
        case "+":
            previousNumberPressed = calculatedLabel.text!
            operand = .add
            calculatedLabel.text = "0.0"
        case "-":
            previousNumberPressed = calculatedLabel.text!
            operand = .subtract
            calculatedLabel.text = "0.0"
        case "/":
            previousNumberPressed = calculatedLabel.text!
            operand = .divide
            calculatedLabel.text = "0.0"
        case "%":
            previousNumberPressed = calculatedLabel.text!
            operand = .percent
            calculatedLabel.text = "0.0"
        case "+/-":
            calculatedLabel.text = "\(Double ((calculatedLabel.text)!)! * -1)"
        case "X":
            previousNumberPressed = calculatedLabel.text!
            operand = .multiply
            calculatedLabel.text = "0.0"
            
        case "=":
            switch operand {
                
            case .add:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let sum = firstNum + secondNum
                    calculatedLabel.text = String(sum)
                }
            case .subtract:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let difference = firstNum - secondNum
                    calculatedLabel.text = String(difference)
                }
            case .multiply:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let product = firstNum * secondNum
                    calculatedLabel.text = String(product)
            }
            case .divide:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let quotient = firstNum / secondNum
                    calculatedLabel.text = String(quotient)
                }
            case .percent:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let percentage = firstNum + secondNum / 100
                    calculatedLabel.text = String(percentage)
                }
            case .positiveOrNegative:
                if let firstNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let integer = firstNum + secondNum * -1
                    calculatedLabel.text = String(integer)
                }
            case .allClear:
                if let firNum = Double(previousNumberPressed), let secondNum = Double(calculatedLabel.text!) {
                    let clear = "0.0"
                    calculatedLabel.text = String(clear)
                }
                
            case .none:
                print("error")
                
        }
        default:
            print("error")
        }
    }
}
