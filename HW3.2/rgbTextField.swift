//
//  rgbTextField.swift
//  HW3.2
//
//  Created by max on 25.01.2022.
//

import SwiftUI

struct rgbTextField: View {
    @Binding var value: Double
    @State  var alertPresented = false
    
    var body: some View {
        rgbTextField(value: $value, alertPresented: false)
    }
}

struct rgbTextField_Previews: PreviewProvider {
    static var previews: some View {
        rgbTextField(value: .constant(127))
    }
}

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
    }
}

extension rgbTextField {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderedViewModifier())
    }
}
