import UIKit

func reverseSort(_ strings: [String]) -> [String] {
    let decendingnames = strings.sorted(by: >)
    return decendingnames
}
reverseSort("Bob", "Jill", "Sally")

