//
//  SwiftUIHorizontalStackView.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIHorizontalStackView: View {
    var body: some View {
        
        HStack(alignment: .top, spacing: 20.0) {
            Text("FirstView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("SecondView")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("ThirdView")
                .padding(.all, 20.0)
                .lineLimit(nil)
        }
    }
}

struct SwiftUIHorizontalStackView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIHorizontalStackView()
    }
}
