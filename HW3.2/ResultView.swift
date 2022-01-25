//
//  ResultView.swift
//  HW3.2
//
//  Created by max on 24.01.2022.
//

import SwiftUI

struct ResultView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 6)
                )
            .frame( height: 130)
    }
        
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(red: 127, green: 127, blue: 127)
    }
}
