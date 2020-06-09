//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("SwiftUI Demo"))
                {
                    NavigationLink(destination: SwiftUITextView()) {
                        Text("Custom text")
                    }
                    
                    NavigationLink(destination: SwiftUIImageView()) {
                        Text("Custom Image")
                    }
                    
                    NavigationLink(destination: SwiftUIVerticalStackView()) {
                        Text("Vertical Stack")
                    }
                    
                    NavigationLink(destination: SwiftUIHorizontalStackView()) {
                        Text("Horizonal Stack")
                    }
                    
                    NavigationLink(destination: SwiftUIButton()) {
                        Text("Some Button")
                    }
                    
                    NavigationLink(destination: SwiftUIPickerView()) {
                        Text("Picker View")
                    }
                    
                    NavigationLink(destination: SwiftUIMultipleDevicePreview()) {
                        Text("Preview for multiple devices")
                    }
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
