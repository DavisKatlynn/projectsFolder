//
//  ViewController.swift
//  contest
//
//  Created by Katlynn Davis on 11/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterButtonDidTouchUpInside(_ sender: Any) {
        if emailTextField.text?.isEmpty == true {
            performLabTextFieldShakeAnimation()
            //performChallengeTextFieldShakeAnimation()
        } else {
            performSegue(withIdentifier: "contestSegue", sender: nil)
        }
        
    }
    
    private func performLabTextFieldShakeAnimation() {
        UIView.animate(withDuration: 0.2, animations: {
            let rightTransform  = CGAffineTransform(translationX: 20, y: 0)
            self.emailTextField.transform = rightTransform
        }) { (_) in
            UIView.animate(withDuration: 0.2, animations: {
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }
}
