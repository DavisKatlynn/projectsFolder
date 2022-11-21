//
//  OrangeviewControllerViewController.swift
//  Tab bar controler
//
//  Created by Katlynn Davis on 9/16/22.
//

import UIKit

class OrangeviewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "3"
        tabBarItem.badgeColor = .blue
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
