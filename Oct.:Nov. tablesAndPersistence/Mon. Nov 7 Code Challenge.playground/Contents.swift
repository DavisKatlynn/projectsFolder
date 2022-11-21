import UIKit

//When provided with a letter, return its position in the alphabet.

// Input :: "a"
// Output :: "Position of alphabet: 1"


let alphabet: [String] = [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
]

var alphaDictionary = [String: Int]()
var i: Int = 0

for a in alphabet {
    alphaDictionary[a] = +i
}
