//
//  Color.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 18/09/24.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("AppGreen")
    let red = Color("AppRed")
    let secondaryText = Color("SecondaryTextColor")
    
}

struct ColorTheme2 {
    let accent = Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    let background = Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
    let green = Color(#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1))
    let red = Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
    let secondaryText = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
}

struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}
