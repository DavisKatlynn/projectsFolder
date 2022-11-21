import UIKit

//CLOSURES/ completion block LESSON 5.1
//reference to a function

//VOCAB ****
// CAPTURE
//CLOSURE
//FILTER
//MAP
//REDUCE
//SYNTACTIC SUGAR- SHORTENED VERSION OF CODE

// BREAK DOWN THE SYNTAX
// syntax of reduce():
//What is the function call? (reduce())
//What is the starting value in the function call? (0)
//What is the closure parameter? ({ $0 + $1 })
//What does the $0 represent? (The value of all the items that have been reduced so far.)
//What does the $1 represent? (The value of the new item that you are reducing into the total.)​ 

//FUNCTIONS ***

//sorted(by:)

// let sortedTracks = tracks.sorted (firstTrack, secondTrack) -> Bool

//Syntactic Sugar
// let sortedTracks = tracks.sorted { $0.starRating < $1.starRating }
// or
// let sortedTracks = tracks.sorted (by: <)
// $0, $1 can replace firstTrack and secondTrack so that you can write it in one line

//map()
// let names = ["Johnny", "Nellie", "Aaron", "Rachel"]

// Creates a new array of full names by adding "Smith" to each first name
//let fullNames = names.map { (name) -> String in
  //  return name + " Smith"
//}
// OR SHORTENED
//let names = ["Johnny", "Nellie", "Aaron", "Rachel"]
// Creates a new array of full names by adding "Smith" to each first name
// let fullNames = names.map { $0 + " Smith }
// output
//0 "Johnny Smith"
//1 "Nellie Smith"
//2 "Aaron Smith"
//3 "Rachel Smith"


//filter()

//let numbers = [4, 8, 15, 16, 23, 42]
//let numbersLessThan20 = numbers.filter { (number) -> Bool in
    //return number < 20
// }

//print(numbersLessThan20)

// OUTPUT
// [4, 8, 15, 16]

//reduce()

// let numbers = [8, 6, 7, 5, 3, 0, 9]
//let total = numbers.reduce(0) { (currentTotal, newValue) -> Int in
 //   return currentTotal + newValue
// }
// OR SYNTATIC SUGAR
// let numbers = [8, 6, 7, 5, 3, 0, 9]
//let total = numbers.reduce(0) { $0 + $1 }


// CLOSURES PRACTICE

// Map
struct Person {
    var name: String
}

let names = ["Bob", "Stan", "Julie", "Beth"]
// want to convert the array of names into an array of people
let people = names.map { name in
    return Person(name: name)
}
// OR Syntatic Sugar
// let peopleSyntaticSugar = names.map { Person(name: $0) }

// Reduce()

struct Family {
    var familyName: String
    var members: [Person]
}

let family = Family(familyName: "Johnsons", members: [])
names.reduce(family) { currentFamily, name in
    var currentFamily = currentFamily
    let person = Person(name: name)
    currentFamily.members.append(person)
    return currentFamily
}

// Sort

func namesAreInAscendingOrder(first: String, second: String) -> Bool {
    return first < second
}

let sortedNames = names.sorted(by: namesAreInAscendingOrder)


// cell Example
//protocol CellDelegate {
  //  func buttonWasTapped() -> Void
//}

class Cell: UITableViewCell {
    let button: UIButton! = nil
    //var delegate: CellDelegate? = nil
    var buttonTappedClosure: (() -> Void)? = nil
    
    func buttonTapped() {
       // delegate?.buttonWasTapped()
        buttonTappedClosure?()
    }
}

class TableViewController: UITableViewController { //CellDelegate {
    var someCellButtonWasTapped = false
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Cell()
        
        //cell.delegate = self
        cell.buttonTappedClosure = { () -> Void in
            print(indexPath.row)
            self.someCellButtonWasTapped.toggle()
        }
        
        return cell
    }
    
    //func buttonWasTapped() {
      //  someCellButtonWasTapped.toggle()
    //}
}
