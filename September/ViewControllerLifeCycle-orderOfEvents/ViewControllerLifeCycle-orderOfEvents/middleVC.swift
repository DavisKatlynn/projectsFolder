//
//  middleVC.swift
//  ViewControllerLifeCycle-orderOfEvents
//
//  Created by Katlynn Davis on 9/27/22.
//

import UIKit

class middleVC: UIViewController {
    
    @IBOutlet weak var middleVC: UILabel!
    
    var eventNumber: Int = 1
    
    
    func addEvent(from: String) {
        if let existingText = middleVC.text {
            middleVC.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let actualText = middleVC.text {
            middleVC.text = "\(actualText)\nEvent number \(eventNumber) is viewWillAppear"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let actualText = middleVC.text {
            middleVC.text = "\(actualText)\nEvent number \(eventNumber) is viewDidAppear"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    
        if let actualText = middleVC.text {
            middleVC.text = "\(actualText)\nEvent number \(eventNumber) is viewWillDisapear"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    
        if let actualText = middleVC.text {
            middleVC.text = "\(actualText)\nEvent number \(eventNumber) is viewDidDisapear"
            eventNumber += 1
        }
    }
}
