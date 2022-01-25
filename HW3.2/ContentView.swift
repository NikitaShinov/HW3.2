//
//  ContentView.swift
//  HW3.2
//
//  Created by max on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(UIColor.systemCyan)
            
            VStack (spacing: 30){
                ResultView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                VStack (spacing: 30) {
                    ColorSlider(value: $redSliderValue, textColor: .red)
                    padding()
                    ColorSlider(value: $greenSliderValue, textColor: .green)
                    padding()
                    ColorSlider(value: $blueSliderValue, textColor: .blue)
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value, in: 0...255, step: 1)
            Text("255").foregroundColor(textColor)
        }
        .padding(.horizontal)
    }
}
