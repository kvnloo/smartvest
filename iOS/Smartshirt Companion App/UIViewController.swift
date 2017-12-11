//
//  UIViewController.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    
    @IBAction func openMenu(_ sender: UIButton) {
        (tabBarController?.parent as? MenuController)?.animateOpen()
    }
}

extension UIViewController: StoryboardIdentifiable {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

