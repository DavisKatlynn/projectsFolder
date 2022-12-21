//
//  dogVC.swift
//  APIProject
//
//  Created by Katlynn Davis on 12/5/22.
//

import UIKit

class dogVC: UIViewController {
    
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var newImageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    @IBAction func newImageButtonPressed(_ sender: UIButton) {
        Task {
            do {
                let imageInfo =  try await fetchDogImageInfo()
    
                dogImage.image =  try await APIProject.dogImage(dogImageurl: imageInfo.url)
            } catch {
                print(error)
            }
        }
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


