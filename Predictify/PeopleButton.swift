//
//  PeopleButton.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-22.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit

class PeopleButton:UIView {
    var nameLabel: UILabel!
    var uidLabel: UILabel!
    
    init(name:String, uid:String, number:Int) {
        super.init(frame: CGRect(x: 0, y: number*120+100, width: 375, height: 120))
        self.addSubview(self.nameLabel)
        self.addSubview(self.uidLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
