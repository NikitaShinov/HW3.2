//
//  rgbSlider.swift
//  HW3.2
//
//  Created by max on 25.01.2022.
//

import SwiftUI

struct rgbSlider: View {
    
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
    }
}

struct rgbSlider_Previews: PreviewProvider {
    static var previews: some View {
        rgbSlider(value: .constant(127))
    }
}
