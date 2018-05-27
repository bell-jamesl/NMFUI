//
//  UIImageExtensions.swift
//  NMF
//
//  Created by James Laurenstin on 2018-04-16.
//  Copyright © 2018 Bell. All rights reserved.
//

import UIKit

extension UIImage {
    /// Create an image with solid color
    ///
    /// - Parameter color: specified solid color
    /// - Returns: returns the modified image with solid color
    class func imageWithColor(_ color: UIColor) -> UIImage {
        let img = imageWithColor(color, size: CGSize(width: 1, height: 1))
        return img
    }
    
    /// Create an image with solid color of a specific size
    ///
    /// - Parameters:
    ///   - color: color: specified solid color
    ///   - size: requested specific size
    /// - Returns: returns the modified image with solid color
    class func imageWithColor(_ color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return img!
    }
}
