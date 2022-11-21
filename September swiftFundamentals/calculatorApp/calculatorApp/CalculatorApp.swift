//
//  CalculatorApp.swift
//  calculatorApp
//
//  Created by Katlynn Davis on 10/4/22.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}
