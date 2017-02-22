//
//  Add.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-22.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit

class Add:UIViewController {
    @IBOutlet weak var date1: UIDatePicker!
    @IBOutlet weak var date2: UIDatePicker!
    @IBOutlet weak var eventField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hex: 0x3B6064)
        self.date1.setValue(UIColor.white, forKey: "textColor")
        self.date2.setValue(UIColor.white, forKey: "textColor")
        eventField.borderStyle = UITextBorderStyle.none
        eventField.attributedPlaceholder = NSAttributedString(string: eventField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}
