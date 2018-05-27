//
//  UIView.swift
//  NMF
//
//  Created by James Laurenstin on 2018-04-16.
//  Copyright © 2018 Bell. All rights reserved.
//

import UIKit

extension UIView {
    /// Transforms a UIView into UIImage
    ///
    /// - Returns: UIImage object from UIView
    func asImage() -> UIImage {
        if #available(iOS 9, *) {
            UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0.0)
            defer { UIGraphicsEndImageContext() }
            
            guard let currentContext = UIGraphicsGetCurrentContext() else {
                return UIImage()
            }
            
            self.layer.render(in: currentContext)
            return UIGraphicsGetImageFromCurrentImageContext()!
        }
        else {
            let renderer = UIGraphicsImageRenderer(size: self.bounds.size)
            
            return renderer.image { ctx in
                self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
            }
        }
    }
}
