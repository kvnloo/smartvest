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
        static let lightGrey:   UIColor = UIColor(red: 242.0/255.0,  green: 242.0/255.0,  blue: 242.0/255.0,  alpha: 1.0)
        
    }
    
    /**
     This struct contains all of the font constants.
     */
    struct Fonts {
        static let RegularFont: UIFont? = UIFont(name: "Montserrat-Regular", size: 12.0)
        static let BoldFont: UIFont? = UIFont(name: "Montserrat-Regular", size: 14.0)
        static let IconFont: UIFont? = UIFont(name: "fontawesome-webfont", size: 12.0)
    }
    
}
