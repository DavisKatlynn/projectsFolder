//
//  ViewController.swift
//  textValidationApp
//
//  Created by Katlynn Davis on 10/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var usernameError: UILabel!
    @IBOutlet weak var passwordError: UILabel!
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resetForm()
    }
    
    func resetForm()
    {
        submitButton.isEnabled = false
        
        usernameError.isHidden = false
        passwordError.isHidden = false
        
        usernameError.text = "Required"
        passwordError.text = "Required"
        
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func usernameChanged(_ sender: Any)
    {
        if let username = usernameTF.text
        {
            if let errorMessage = invalidUsername(username)
            {
                usernameError.text = errorMessage
                usernameError.isHidden = false
            }
            else
            {
                usernameError.isHidden = true
            }
        }
        
        checkForValidForm()
    }
    
    func invalidUsername(_ value: String) -> String?
    {
        let reqularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        if !predicate.evaluate(with: value)
        {
            return "Invalid Username"
        }
        
        return nil
    }
    
    @IBAction func passwordChanged(_ sender: Any)
    {
        if let password = passwordTF.text
        {
            if let errorMessage = invalidPassword(password)
            {
                passwordError.text = errorMessage
                passwordError.isHidden = false
            }
            else
            {
                passwordError.isHidden = true
            }
        }
        
        checkForValidForm()
    }
    
    func invalidPassword(_ value: String) -> String?
    {
        if value.count < 8
        {
            return "Password must be at least 8 characters"
        }
        if containsDigit(value)
        {
            return "Password must contain at least 1 digit"
        }
        if containsLowerCase(value)
        {
            return "Password must contain at least 1 lowercase character"
        }
        if containsUpperCase(value)
        {
            return "Password must contain at least 1 uppercase character"
        }
        return nil
    }
    
    func containsDigit(_ value: String) -> Bool
    {
        let reqularExpression = ".*[0-9]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
    
    func containsLowerCase(_ value: String) -> Bool
    {
        let reqularExpression = ".*[a-z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
    
    func containsUpperCase(_ value: String) -> Bool
    {
        let reqularExpression = ".*[A-Z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
    func checkForValidForm()
    {
        if usernameError.isHidden && passwordError.isHidden
        {
            submitButton.isEnabled = true
        }
        else
        {
            submitButton.isEnabled = false
        }
    }
    
    @IBAction func submitAction(_ sender: Any)
    {
        resetForm()
    }
    
}
