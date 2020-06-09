//
//  SwiftUIMultipleDevicePreview.swift
//  SwiftUIAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import SwiftUI

struct SwiftUIMultipleDevicePreview: View {
    var body: some View {
        Text("Multiple Device Preview")
    }
}

struct SwiftUIMultipleDevicePreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        SwiftUIMultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8"))
        .previewDisplayName("iPhone 8")
        
        SwiftUIMultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8 Plus"))
        .previewDisplayName("iPhone 8 Plus")
        
        SwiftUIMultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro"))
        .previewDisplayName("iPhone 11 Pro")
            
        SwiftUIMultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro Max"))
               .previewDisplayName("iPhone 11 Pro Max")
            
        SwiftUIMultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11"))
               .previewDisplayName("iPhone 11")
            
        }
    }
}

