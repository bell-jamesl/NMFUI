//
//  UIFontExtensions.swift
//  NMF
//
//  Created by James Laurenstin on 2018-04-16.
//  Copyright © 2018 Bell. All rights reserved.
//

import UIKit

extension UIFont {
    /// Prints all the fonts available
    ///
    /// - Parameter filter: Optional filter on the family name of the fonts.
    public static func printAllFonts(familyFilter filter: String? = nil) {
        print("\n--- FONTS\((filter != nil) ? " familyFilter=\(filter!)" : "") ---\n")
        
        UIFont.familyNames.forEach { name in
            guard filter == nil || name.contains(filter!) else { return }
            
            print(name)
            
            UIFont.fontNames(forFamilyName: name).forEach { font in
                print("   \(font)")
            }
        }
        
        print("\n--- END FONTS ---\n")
    }
}
