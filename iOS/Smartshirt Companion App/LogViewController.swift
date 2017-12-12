//
//  LogViewController.swift
//  Smartshirt Companion App
//
//  Created by Kevin Rajan on 12/11/17.
//  Copyright © 2017 Kevin Rajan. All rights reserved.
//

import UIKit

class LogViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    let questions = [ "Describe your child's mood",
                      "Describe your child's activity level",
                      "Describe any unusual behaviour",
                      "Additional Comments" ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UX.Colors.lightGrey
        tableview.backgroundColor = UX.Colors.lightGrey
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section < questions.count {
            let bundle = Bundle(for: type(of: self))
            if let nib = UINib(nibName: "Log Section Header", bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? SectionHeaderView {
                nib.label.text = questions[section]
                return nib
            }
        }
        return UIView()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return questions.count + 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section < questions.count {
            return 150
        }
        return 66
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section < questions.count {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "logCell") {
                cell.contentView.backgroundColor = UIColor.clear
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell") {
                cell.contentView.backgroundColor = UIColor.clear
                return cell
            }
        }
        
        return UITableViewCell()
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
