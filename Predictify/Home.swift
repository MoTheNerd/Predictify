//
//  Home.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-22.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase



func initDatabase(){
    currentDatabase = FIRDatabase.database().reference().ref
    //currentDatabase?.child("users").child((currentUser?.uid)!).child("schedule").child("\((currentUser?.uid)!)1").
    
}

class Home:UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "N/A"
        self.view.backgroundColor = UIColor(hex: 0x364958)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
}
