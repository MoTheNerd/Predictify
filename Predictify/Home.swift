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
    
    if var topController = UIApplication.shared.keyWindow?.rootViewController {
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        
        // topController should now be your topmost view controller
        ((topController as! CustomTabBarViewController).viewControllers?[0] as! Home).refreshView()
    }
}

class Home:UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "N/A"
        self.view.backgroundColor = UIColor(hex: 0x364958)
    }
    
    func refreshView(){
        //print(currentDatabase!.child("users").child((currentUser?.uid)!).child("general"))
        //var nameString:String = currentDatabase!.child("users").child((currentUser?.uid)!).child("general").value(forKey: "name")! as! String
        let nameString:String = "Mohammad"
        nameLabel.text = "Hey, \(nameString)!"
        nameLabel.sizeToFit()
        nameLabel.center.x = self.view.bounds.midX
        nameLabel.textColor = UIColor(hex: 0xffffff)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    
    
}
