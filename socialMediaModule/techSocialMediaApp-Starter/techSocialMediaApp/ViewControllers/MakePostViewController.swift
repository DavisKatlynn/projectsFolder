//
//  MakePostViewController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/14/23.
//

import UIKit

class MakePostViewController: UIViewController {
    
    var post: GetUserPost?
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var postTitleTextField: UITextField!
    
    @IBOutlet weak var body: UITextField!
    
    @IBOutlet weak var postTitle: UILabel!
    
    @IBOutlet weak var postInfo: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if post != nil {
            postTitleTextField.text = post?.title
            body.text = post?.body
        }
        
        // Do any additional setup after loading the view.
    }
    
    func createPost() {
        guard let body = body.text, let title = postTitleTextField.text else { return }
        
        Task {
            do {
                // Make the API Call
                
                try await MakePostController().makePost(userSecret: User.current!.secret, title: title, body: body)
                performSegue(withIdentifier: "unwindToProfile", sender: nil)
            } catch {
                print(error)
                
            }
        }
    }
    
    func editPost() {
        guard let body = body.text, let title = postTitleTextField.text, let postid = post?.postid else { return }
        
        Task {
            do {
                // Make the API Call
                
              try await techSocialMediaApp.editPost(title: title, body: body, postid: postid)
                performSegue(withIdentifier: "unwindToProfile", sender: nil)
            } catch {
                print(error)
                
            }
        }
    }
        
        
        @IBAction func shareButtonTapped(_ sender: Any) {
            performSegue(withIdentifier: "unwindToProfile", sender: self)
            createPost()
            if post != nil {
                editPost()
            }else {
                createPost()
            }
        }
        
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
}
