//
//  ViewController.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-21.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

var currentUser:FIRUser?
var currentAuth:FIRAuth?
var currentDatabase:FIRDatabaseReference?


class LoginPage: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        currentAuth = FIRAuth.auth()
        passwordField.isSecureTextEntry = true;
        
        emailField.attributedPlaceholder = NSAttributedString(string: emailField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
        passwordField.attributedPlaceholder = NSAttributedString(string: passwordField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
        
        emailField.text = "malahdal@ualberta.ca"
        passwordField.text = "hack2017"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        emailField.borderStyle = UITextBorderStyle.none
        passwordField.borderStyle = UITextBorderStyle.none
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        
        //check for the two text fields
        
        if emailField.text! == "" {
            //alert email
            emailField.placeholder = "Oops! You missed this!, email please!"
            emailField.attributedPlaceholder = NSAttributedString(string: emailField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
            passwordField.attributedPlaceholder = NSAttributedString(string: passwordField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
        }
        if passwordField.text! == "" {
            //alert password
            //passwordField.borderStyle = UITextBorderStyle.line
            passwordField.placeholder = "Oops! You missed this!, password please!"
            emailField.attributedPlaceholder = NSAttributedString(string: emailField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
            passwordField.attributedPlaceholder = NSAttributedString(string: passwordField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
        }
        if emailField.text! != "" && passwordField.text! != "" {
            currentAuth?.signIn(withEmail: emailField.text!, password: passwordField.text!, completion: {(user,error) in
                //you have user and error values
                if error != nil {
                    self.emailField.text = ""
                    self.passwordField.text = ""
                    self.emailField.placeholder = "Eek! Try again?, email please!"
                    self.passwordField.placeholder = "Eek! Try again?, password please!"
                    self.emailField.attributedPlaceholder = NSAttributedString(string: self.emailField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
                    self.passwordField.attributedPlaceholder = NSAttributedString(string: self.passwordField.placeholder!, attributes: [NSForegroundColorAttributeName : UIColor(hex: 0xffffff, alpha: 0.7)])
                }else{
                    currentUser = user!
                    //perform segue
                    self.performSegue(withIdentifier: "loginSuccess", sender: self)
                    initDatabase()
                }
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }


}

