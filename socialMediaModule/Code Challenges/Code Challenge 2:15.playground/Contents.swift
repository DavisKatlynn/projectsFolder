import UIKit

 //Create a function that is a Hashtag Generator by using the following rules:

 //The output must start with a hashtag (#).
 //Each word in the output must have its first letter capitalized.
 //If the final result, a single string, is longer than 140 characters, the function should return nil.
 //If either the input (str) or the result is an empty string, the function should return nil.

// Examples
 //generateHashtag("    Hello     World   " ) ➞ "#HelloWorld"

 //generateHashtag("") ➞ nil, "Expected an empty string to return nil"

// generateHashtag("Coding is fun") ➞ "#CodingIsFun", "Should remove spaces and capitalize."


func hashtagGenerator(_ str: String) -> String? {
    let words = str.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    let capitalizedWords = words.map({ $0.capitalized })
    let hashtag = "#" + capitalizedWords.joined()

    if hashtag.count > 140 || str.isEmpty || hashtag.isEmpty {
        return nil
    }

    return hashtag
}
hashtagGenerator("    Hello     World   " )
hashtagGenerator("")
hashtagGenerator("Coding is fun")
