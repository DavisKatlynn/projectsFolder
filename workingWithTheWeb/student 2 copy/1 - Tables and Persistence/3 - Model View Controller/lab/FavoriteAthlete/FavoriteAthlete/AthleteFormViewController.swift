//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Katlynn Davis on 10/26/22.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?
    
    
    init?(coder: NSCoder, athlete: Athlete?) {
        super.init(coder: coder)
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("not supposed to run this code")
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        
    }
    
    func updateView() {
        if let athlete = athlete {
            nameTextField.text = athlete.name
            ageTextField.text = athlete.age
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
        }
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let name = nameTextField.text,
              let age = ageTextField.text,
              let league = leagueTextField.text,
              let team = teamTextField.text else {return}
            
            athlete = Athlete(name: name, age: age, league: league, team: team)
            performSegue(withIdentifier: "unwindSegue", sender: self)
        }
    }

