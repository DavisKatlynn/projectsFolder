import UIKit

// Is the string uppercase?
// Task
// Create a method to see whether the string is ALL CAPS.

// Examples (input -> output)
// "c" -> False
// "C" -> True
// "hello I AM DONALD" -> False
// "HELLO I AM DONALD" -> True
// "ACSKLDFJSgSKLDFJSKLDFJ" -> False
// "ACSKLDFJSGSKLDFJSKLDFJ" -> True
// A string is said to be in ALL CAPS whenever it does not contain any lowercase letter so any string containing no letters at all is trivially considered to be in ALL CAPS.


var str1 = "hello I Am dONaLD"


var str2 = "HELLO I AM DONALD"


if(str1.uppercased() == str2.uppercased()) {
  print("True")
}
else {
  print("False")
}



