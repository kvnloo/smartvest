//
//  EquipmentTableViewCell.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit

class EquipmentTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var stackview: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.layer.masksToBounds = true
        cardView.layer.cornerRadius = 5
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize(width: 1, height: 10)
        cardView.layer.shadowPath = UIBezierPath(rect: cardView.bounds).cgPath
        cardView.layer.shadowRadius = 1
        cardView.layer.shouldRasterize = true
    }

}
