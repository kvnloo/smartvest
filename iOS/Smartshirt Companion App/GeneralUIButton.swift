//
//  GeneralUIButton.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit

class GeneralUIButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.backgroundColor = UX.Colors.spaceBlue
        self.setTitleColor(UX.Colors.paleWhite, for: .normal)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.height / 2
        
    }

}
