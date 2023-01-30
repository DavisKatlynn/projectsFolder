//
//  StoreItemListTableViewController.swift
//  iTunesSearch
//
//  Created by Katlynn Davis on 1/26/23.
//
import UIKit

class StoreItemListTableViewController: UITableViewController {
            
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

