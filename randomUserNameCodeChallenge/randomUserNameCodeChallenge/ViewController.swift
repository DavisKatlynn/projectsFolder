//
//  ViewController.swift
//  randomUserNameCodeChallenge
//
//  Created by Katlynn Davis on 2/27/23.
//

import UIKit
//defines a class called ViewController that inherits from UIViewController and adopts the UITableViewDataSource and UITableViewDelegate protocols
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var nameTextField: UITextField!
    
    //declares an array of Name objects to store user-entered names
    var names = [Name]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sets the data source and delegate of the table view to the view controller
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    //This function checks if the text field is not empty, then creates a new Name object with the text entered in the textfield, adds it to the beginning of the names array, clears the text field, and reloads the table view
    func storeTextFieldNames() {
        if !nameTextField.text!.isEmpty {
            let saveName = Name(name: nameTextField.text!)
            names.insert(saveName, at: 0)
            nameTextField.text = ""
            tableView.reloadData()
        }
    }
    
//    This function specifies the number of rows in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
//    This function creates and returns a table view cell for each row. It dequeues a cell with the identifier "displayUserCell" and sets its text label to the corresponding name in the names array.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "displayUserCell", for: indexPath) as! RandomUserTableViewCell
        let named = names[indexPath.row]
        cell.nameLabelText.text = named.name
        
        return cell
    }
    
    //This action is triggered when the "Add" button is tapped. It calls the storeTextFieldNames() function to add the name entered in the text field to the names array
    @IBAction func addNameTapped(_ sender: Any) {
        storeTextFieldNames()
    }
//    This action is triggered when the "Who Wins?" button is tapped. It randomly selects a name from the names array and displays it in an alert dialog box with an OK button. When the OK button is tapped, it prints a message to the console
    @IBAction func whoWinsButtonTapped(_ sender: Any) {
        let randomItem = names.randomElement()?.name
        var dialogMessage = UIAlertController(title: randomItem, message: "User selected", preferredStyle: .alert)
        
        // Creates OK button
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        dialogMessage.addAction(ok)
 
        // Presents alert message to user
        self.present(dialogMessage, animated: true, completion: nil)
    }
}

