//
//  Settings.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-22.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit

class Settings:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hex: 0x87BBA2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}
