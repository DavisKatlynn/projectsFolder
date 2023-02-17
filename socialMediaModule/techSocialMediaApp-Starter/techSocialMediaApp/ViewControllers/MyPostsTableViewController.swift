//
//  MyPostsTableViewController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import UIKit

class MyPostsTableViewController: UITableViewController, MyPostTableViewCellDelegate {
    
     
     func deletePost(cell: UITableViewCell) {
        Task {
            do {
                let indexPath = tableView.indexPath(for: cell)
                let post = posts[indexPath!.row]
                // Make the API Call
                try await techSocialMediaApp.deletePost(post: post)
               
                posts.remove(at: indexPath!.row)
                tableView.deleteRows(at: [indexPath!], with: .automatic)
                
            } catch {
                print(error)
                
            }
        }
    }

    func performEditPostSegue(cell: UITableViewCell) {
        performSegue(withIdentifier: "editSegue", sender: cell)
    }
    
    var posts = [GetUserPost]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getMyPosts()
        
    }
    
    func getMyPosts() {
        Task {
            do {
                // Make the API Call
                let success = try await GetUserPostController().fetchItemsGetPost()
                
                posts = success
                
                tableView.reloadData()
                
            } catch {
                print(error)
                
            }
        }
    }
    
    @IBAction func unwindToProfile(segue: UIStoryboardSegue) {
        getMyPosts()
        tableView.reloadData()
    }
    
   
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return 1
        default: return posts.count
        }
    }
    
    // uncomment when you figure out how to fix this
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileInfoCell", for: indexPath)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "myPostsCell", for: indexPath) as! MyPostsTableViewCell
            
            let data = posts[indexPath.row]
            
            cell.delegate = self
            cell.userNameLabel.text = data.authorUserName
            cell.CreateDateLabel.text = data.createdDate
            cell.titleLabel.text = data.title
            cell.bodyLabel.text = data.body
            
            
            // Configure the cell...
            
            return cell
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editSegue" {
            let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
            let post = posts[indexPath!.row]
            let navController = segue.destination as! UINavigationController
            let makePostViewController = navController.topViewController as! MakePostViewController
            makePostViewController.post = post
        }
    }
}
