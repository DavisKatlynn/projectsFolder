import UIKit

// VOCAB

// Extension
// mutate


// extensions have to be top level- it is a global extension
// if its used in just 1 file put it at the bottom of the file
//or
// if  you need to access alot of extensions in alot of different files just create an extension file for all of them to be in one place

//extension SomeType {
    // new functionality to add to SomeType goes here
    //only computed, static functions
//}


let char: Character = "abcd".first!
let strChar = "\(char)" // make automatedish

extension Character {
    func stringValue() -> String {
        "\(self)"
    }
    var string: String {
        "\(self)"
    }
    
    static var invalidCharacter = "!"
}


char.stringValue
char.string



// extensions extendand exisitng class or struct

extension UIColor {
    static var successGreen: UIColor {
        return .green
    }
}

let view = UIView()
view.backgroundColor = .successGreen



extension DateFormatter {
    
    static let short: DateFormatter {
        // below is how you would implement it
    }
}


class ViewController: UIViewController {
    let formatter = DateFormatter.short
    
}


extension String {
    func removeLast() {
        
    }
}

"mdkvncfinveds;awjo".removeLast()
