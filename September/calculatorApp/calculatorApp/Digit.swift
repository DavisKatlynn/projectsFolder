//
//  Digit.swift
//  calculatorApp
//
//  Created by Katlynn Davis on 10/4/22.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
