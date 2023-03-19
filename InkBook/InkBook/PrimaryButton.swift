//
//  PrimaryButton.swift
//  InkBook
//
//  Created by Katlynn Davis on 3/18/23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    
    
    var body: some View {
        Text(text)
            .bold()
            .frame(width: 280, height: 50)
            .foregroundColor(.black)
            .overlay(Capsule().stroke((LinearGradient(gradient: Gradient(colors: [Color(.green), (.teal), (.green)]), startPoint: .top, endPoint: .trailing))))
        
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
