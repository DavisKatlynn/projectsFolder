//
//  ViewController.swift
//  Pokèmon App
//
//  Created by Katlynn Davis on 9/21/22.
//

import UIKit
import RyansPokemonPackage

class ViewController: UIViewController {
    
    @IBOutlet weak var newPokemonButton: UIButton!

    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    
    @IBOutlet weak var typesStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
    }

    @IBAction func pokemonButtonTapped(_ sender: Any) {
        // get a new pokeman
        // assign the name to the name label
        //assign the photo to the imageView
        Task {
            let pokemon = await getRandomPokemon()
            pokemonNameLabel.text = pokemon.name
            pokemonImageView.setPokemon(pokemon: pokemon)
            
            for view in
                typesStackView.arrangedSubviews {
                view.removeFromSuperview()
            }
            for pType in pokemon.types {
                let label = UILabel()
                label.text = pType.capitalized
                label.textColor = .blue
                label.textAlignment = .center
                typesStackView
                    .addArrangedSubview(label)
                
            }
        }
        
    }
    
}

