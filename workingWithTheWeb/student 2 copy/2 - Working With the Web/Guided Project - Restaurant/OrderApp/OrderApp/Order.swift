//
//  Order.swift
//  resturauntGuidedProject
//
//  Created by Katlynn Davis on 12/9/22.
//
import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]

    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
