//
//  SwiftUIPickerView.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIPickerView: View {
    
    @State private var pickerSelectedIndex = 0
    var array = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            
            Picker(selection: $pickerSelectedIndex, label: Text("Picker")) {
                
                ForEach(0..<array.count) {
                    Text(self.array[$0])
                        .multilineTextAlignment(.center)
                        .frame(width: 500.0)
                        .padding(.all, 10.0)
                        .foregroundColor(.black)
                }
            }
            .frame(width: UIScreen.main.bounds.width/2)
            
            Text("Selected Value Is : \(self.array[pickerSelectedIndex])")
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
        }
        .padding(.all, 20.0)
    }
}

struct SwiftUIPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPickerView()
    }
}
