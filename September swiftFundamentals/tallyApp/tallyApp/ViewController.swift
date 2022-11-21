//
//  ViewController.swift
//  tallyApp
//
//  Created by Katlynn Davis on 10/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        label.text = "\(count)"
    }
    @IBAction func minusAction(_ sender: Any) {
        count = count - 1
        label.text = "\(count)"
    }
    
}

