//
//  StoreItemTableViewDiffableDataSource.swift
//  iTunesSearch
//
//  Created by Katlynn Davis on 1/26/23.
//

import UIKit

@MainActor
class StoreItemTableViewDiffableDataSource: UITableViewDiffableDataSource<String, StoreItem> {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return snapshot().sectionIdentifiers[section]
    }
}
