import UIKit

//Implement a function that determins if aa given string is a digit 0-9



public extension String {
func isNumber() -> Bool {
    return !self.isEmpty && self.rangeOfCharacter(from: CharacterSet.decimalDigits) != nil && self.rangeOfCharacter(from: CharacterSet.letters) == nil
}}

"asdfghjkl".isNumber()

"3456789".isNumber()

"djrfhireujkn49875hfaebh2902bnr".isNumber()
