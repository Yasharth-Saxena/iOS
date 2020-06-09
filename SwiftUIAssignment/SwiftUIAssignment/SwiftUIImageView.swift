//
//  SwiftUIImageView.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIImageView: View {
    var body: some View {
        
        Image("southPark")
        .resizable()
            .frame(width: 400.0, height: 250.0)
        
    }
}

struct SwiftUIImageView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageView()
    }
}
