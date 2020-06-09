//
//  SwiftUIButton.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        
        Button(action: {}) {
                   Text("SomeRandomButton")
                       .foregroundColor(.white)
               }
               .padding(.all, 20.0)
               .frame(width: 300.0)
               .background(Color.red)
               .cornerRadius(5)
        }
}

struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}
