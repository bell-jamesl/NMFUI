//
//  UIDeviceExtensions.swift
//  NMF
//
//  Created by James Laurenstin on 2018-04-16.
//  Copyright © 2018 Bell. All rights reserved.
//

import UIKit

// MARK: - Properties
extension UIDevice {
    /// Returns OS version number
    public var version: Float {
        return (self.systemVersion as NSString).floatValue
    }

    /// Returns if device is Iphone
    public var isPhone: Bool {
        return self.userInterfaceIdiom == .phone
    }
    
    /// Returns if device is Ipad
    public var isPad: Bool {
        return self.userInterfaceIdiom == .pad
    }
    
    /// Returns if device supports retina display
    public var isRetina: Bool {
        return UIScreen.main.scale == 2.0
    }
    
    /// Returns the device's size
    public var size: CGSize {
        return UIScreen.main.bounds.size
    }
}

// MARK: - Size
extension UIDevice {
    public enum DeviceSize: CGFloat, Equatable, Comparable {
        public static func < (lhs: UIDevice.DeviceSize, rhs: UIDevice.DeviceSize) -> Bool {
            return lhs.rawValue < rhs.rawValue
        }
        
        public static func <=(lhs: DeviceSize, rhs: DeviceSize) -> Bool {
            return lhs.rawValue <= rhs.rawValue
        }
        
        public static func >=(lhs: DeviceSize, rhs: DeviceSize) -> Bool {
            return lhs.rawValue >= rhs.rawValue
        }
        
        public static func >(lhs: DeviceSize, rhs: DeviceSize) -> Bool {
            return lhs.rawValue > rhs.rawValue
        }
        
        case inches_3_5 = 480
        case inches_4 = 568
        case inches_4_7 = 667
        case inches_5_5 = 736
    }

    /// Returns the device's size
    public var deviceSize: DeviceSize {
        guard let size = DeviceSize(rawValue: self.size.height) else {
            fatalError("Size not handled")
        }

        return size
    }
}
