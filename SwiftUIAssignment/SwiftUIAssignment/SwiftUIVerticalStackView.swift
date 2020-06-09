//
//  SwiftUIVerticalStackView.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIVerticalStackView: View {
    var body: some View {
        
        VStack {
            
            Text("FirstView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("SecondView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("ThirdView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("FourthView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("FifthView")
                .padding(.all, 20.0)
                .lineLimit(nil)
        }
    }
}

struct SwiftUIVerticalStackView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVerticalStackView()
    }
}
