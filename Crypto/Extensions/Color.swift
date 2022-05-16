//
//  Color.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 16.05.2022.
//

import Foundation
import SwiftUI



extension Color {
    
    // availability to use this instance anytime when call Color
    static let theme = ColorTheme()
    
}


struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}
