//
//  EquipmentViewController.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit

class EquipmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    let icons = ["", ""]
    let equipment = ["ECG SENSOR", "MICROPHONE"] // Uses an array so that this can later be gotten through an API Call
    let status    = [50, 100]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UX.Colors.lightGrey
        tableview.backgroundColor = UX.Colors.lightGrey
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return equipment.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        if let nib = UINib(nibName: "Section Header", bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? SectionHeaderView {
            nib.icon.text = icons[section]
            nib.label.text = equipment[section]
            return nib
        }
        
        
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "equipmentCell") as? EquipmentTableViewCell {
            cell.contentView.backgroundColor = UIColor.clear
            var tintcolor: UIColor
            if status[indexPath.section] <= 25 {
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                tintcolor = UIColor.red
            } else if status[indexPath.section] <= 50 {
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                tintcolor = UIColor.orange
            } else if status[indexPath.section] <= 75 {
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                tintcolor = UIColor.yellow
            } else {
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                cell.stackview.addArrangedSubview(UIImageView(image: #imageLiteral(resourceName: "Ellipse")))
                tintcolor = UIColor.green
            }
            for imageview in cell.stackview.subviews {
                if let imageview = imageview as? UIImageView {
                    imageview.tintColor = tintcolor
                    imageview.contentMode = .scaleAspectFit
                }
            }
            print(cell.stackview.subviews.count)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
