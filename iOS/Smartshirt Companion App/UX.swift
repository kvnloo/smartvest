//
//  UX.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import Foundation
import UIKit


struct UX {
    
    /**
     This struct contains all of the color constants.
     */
    struct Colors {
        
        /// The Pale Red color from the color palette.
        static let paleRed:    UIColor = UIColor(red: 255.0/255.0, green: 118.0/255.0,  blue: 94.0/255.0,  alpha: 1.0)
        /// The Light Yellow color from the color palette.
        static let lightYellow:  UIColor = UIColor(red: 255.0/255.0,  green: 198.0/255.0,  blue: 109.0/255.0,  alpha: 1.0)
        /// The Space Blue color from the color palette.
        static let spaceBlue:   UIColor = UIColor(red: 61.0/255.0,  green: 64.0/255.0,  blue: 91.0/255.0,  alpha: 1.0)
        /// The Pale White color from the color palette.
        static let paleWhite:   UIColor = UIColor(red: 252.0/255.0,  green: 252.0/255.0,  blue: 252.0/255.0,  alpha: 1.0)
        
    }
    
    /**
     This struct contains all of the font constants.
     */
    struct Fonts {
        static let MenuLabelFont: UIFont? = UIFont(name: "RobotoCondensed-Bold", size: 18.0)
        static let SubmenuLabelFont: UIFont? = UIFont(name: "RobotoCondensed-Bold", size: 14.0)
        static let RegularLabelFont: UIFont? = UIFont(name: "Roboto-Regular", size: 12.0)
        static let EmphasisLabelFont: UIFont? = UIFont(name: "Roboto-Bold", size: 14.0)
        static let ItalicsLabelFont: UIFont? = UIFont(name: "Roboto-Italic", size: 12.0)
        static let ThinItalicsLabelFont: UIFont? = UIFont(name: "Roboto-ThinItalic", size: 12.0)
        
    }
    
}
