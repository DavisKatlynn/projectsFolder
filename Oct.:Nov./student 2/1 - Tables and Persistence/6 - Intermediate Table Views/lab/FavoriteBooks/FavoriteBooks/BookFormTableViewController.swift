//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Katlynn Davis on 10/30/22.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    var book: Book?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.reloadData()
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text,
              let author = authorTextField.text,
              let genre = genreTextField.text,
              let length = lengthTextField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
        
    }
    
    func updateView() {
        guard let book = book else {return}
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }
}


    