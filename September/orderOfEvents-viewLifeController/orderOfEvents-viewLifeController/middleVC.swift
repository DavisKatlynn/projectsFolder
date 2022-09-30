//
//  middleVC.swift
//  orderOfEvents-viewLifeController
//
//  Created by Katlynn Davis on 9/29/22.
//

import UIKit

class middleVC: UIViewController {

    @IBOutlet weak var middleVCLabel: UILabel!
    
    var eventNumber: Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("ViewController - View Did Load")

        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidLoad"
            eventNumber += 1
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewController - View Will Appear")
        
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)is viewWillAppear"
            eventNumber += 1
            
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewController - View Did Appear")
        
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidAppear"
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ViewController - View Will Disappear")
        
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillDissapear"
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ViewController - View Did Disappear")
        
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidDissapear"
        }
    }

}


