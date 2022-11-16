import UIKit

//simple, remove the spacesfrom the string, then return the resultant string


func removeSpaces(input: String) -> String {
    var input = input
    input.removeAll { $0 == " " }
    input.removeAll { char in
        return char ==
    }
    return input
    
}

