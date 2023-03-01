//
//  displayDataTableViewController.swift
//  codeChallenge#2
//
//  Created by Katlynn Davis on 2/28/23.
//
import UIKit

class displayDataTableViewController: UITableViewController {

    var users: [Results] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkingManager.fetchUsers { [weak self] (users: [Results]) in
            self?.users = users
            
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! tableViewCell
    
        let user = users[indexPath.row]
        cell.nameLabel?.text = "\(user.name.title) \(user.name.first) \(user.name.last)"
        cell.dobLabel?.text = user.dob.date
        cell.emailLabel?.text = user.email
        cell.locationLabel?.text = user.location.state
        cell.loginLabel?.text = user.login.username
        cell.registeredLabel?.text = user.registered.date
        cell.genderLabel?.text = user.gender
        cell.cellLabel?.text = user.cell
        cell.phoneLabel?.text = user.phone
        cell.idLabel?.text = user.id.value
        cell.natLabel?.text = user.nat
       
        
        let imageUrlString = user.picture.thumbnail
        if let imageUrl = URL(string: imageUrlString) {
            let session = URLSession.shared
            let task = session.dataTask(with: imageUrl) { data, response, error in
                if let error = error {
                    print("Error loading image: \(error.localizedDescription)")
                    return
                }
                guard let data = data, let image = UIImage(data: data) else { return }
                DispatchQueue.main.async {
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
            }
            task.resume()
        }

        return cell
       
    }
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 400
      
  }
}
