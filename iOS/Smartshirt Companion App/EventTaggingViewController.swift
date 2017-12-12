//
//  EventTaggingViewController.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit
import DropDown

class EventTaggingViewController: UIViewController {
    
    var timer = Timer()
    var startTime = TimeInterval()
    
    @IBOutlet weak var toggleButton: GeneralUIButton!
    @IBOutlet var displayTimeLabel: UILabel!
    @IBOutlet weak var anchorView: UIView!
    let dropDown = DropDown()
    @IBOutlet weak var eventButton: UIButton!
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // The view to which the drop down will appear on
        dropDown.anchorView = anchorView
//        // The list of items to display. Can be changed dynamically
        dropDown.dataSource = ["Playtime", "Naptime", "Bathroom", "Diaper Change", "Nursing", "Bathtime", "Other"]
        if let font = UX.Fonts.RegularFont {
            dropDown.textFont = font
            dropDown.textColor = UX.Colors.paleRed
        }
        dropDown.backgroundColor = UIColor.white
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            self.eventButton.setTitle( "\(item) ▾", for: .normal)
        }
        
        textview.layer.masksToBounds = true
        textview.layer.cornerRadius = 5
        textview.layer.shadowColor = UIColor.black.cgColor
        textview.layer.shadowOpacity = 0.5
        textview.layer.shadowOffset = CGSize(width: 1, height: 10)
        textview.layer.shadowPath = UIBezierPath(rect: textview.bounds).cgPath
        textview.layer.shadowRadius = 1
        textview.layer.shouldRasterize = true
        
    }
    
    
    @IBAction func start(sender: AnyObject) {
        if !timer.isValid {
            let actionSelector: Selector = #selector(EventTaggingViewController.updateTime)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target:self, selector:actionSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate
            toggleButton.setTitle("Stop", for: .normal)
        } else {
            timer.invalidate()
            toggleButton.setTitle("Start", for: .normal)
        }
    }
    
    
    @IBAction func showList(_ sender: Any) {
        dropDown.show()
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        displayTimeLabel.text = "00:00.00"
        timer = Timer()
    }
    
    @objc
    func updateTime() {
        let currentTime = NSDate.timeIntervalSinceReferenceDate
        
        // Find the difference between current time and strart time
        var elapsedTime: TimeInterval = currentTime - startTime
        
        // calculate the minutes in elapsed time
        let minutes = UInt8(elapsedTime / 60.0)
        elapsedTime -= (TimeInterval(minutes) * 60)
        
        // calculate the seconds in elapsed time
        let seconds = UInt8(elapsedTime)
        elapsedTime -= TimeInterval(seconds)
        
        // find out the fraction of millisends to be displayed
        let fraction = UInt8(elapsedTime * 100)
        
        // add the leading zero for minutes, seconds and millseconds and store them as string constants
        let startMinutes  = minutes > 9 ? String(minutes):"0" + String(minutes)
        let startSeconds  = seconds > 9 ? String(seconds):"0" + String(seconds)
        let startFraction = fraction > 9 ? String(fraction):"0" + String(fraction)
        
        displayTimeLabel.text = "\(startMinutes):\(startSeconds).\(startFraction)"
    }

}
