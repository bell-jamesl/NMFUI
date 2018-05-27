//
//  UIColorExtension.swift
//  NMF
//
//  Created by James Laurenstin on 2018-04-16.
//  Copyright © 2018 Bell. All rights reserved.
//

import UIKit

// MARK: - RGB color init
extension UIColor {
    /// Create a UIColor from rgb color
    ///
    /// - Parameters:
    ///   - red: red value
    ///   - green: green value
    ///   - blue: blue value
    ///   - a: alpha value
    public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        assert(a >= 0 && a <= 1, "Invalid alpha value")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: a)
    }
}

// MARK: - Hexadecimal color value init
extension UIColor {
    /// Create a UIColor from a hex value
    ///
    /// - Parameters:
    ///   - hex: Hex value (E.g 0x000000)
    ///   - a: alpha value
    public convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}
