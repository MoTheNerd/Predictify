//
//  Notifications.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-22.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit

class Notifications:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hex: 0x55828B)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}
