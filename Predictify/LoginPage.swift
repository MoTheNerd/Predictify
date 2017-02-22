//
//  ViewController.swift
//  Predictify
//
//  Created by Mohammad Al-Ahdal on 2017-02-21.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//

import UIKit
import FirebaseAuth

var currentUser:FIRUser?
var currentAuth:FIRAuth?


class LoginPage: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        currentAuth = FIRAuth.auth()
        passwordField.isSecureTextEntry = true;
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
        }
        if passwordField.text! == "" {
            //alert password
            //passwordField.borderStyle = UITextBorderStyle.line
            passwordField.placeholder = "Oops! You missed this!, password please!"
        }
        if emailField.text! != "" && passwordField.text! != "" {
            currentAuth?.signIn(withEmail: emailField.text!, password: passwordField.text!, completion: {(user,error) in
                //you have user and error values
                if error != nil {
                    self.emailField.text = ""
                    self.passwordField.text = ""
                    self.emailField.placeholder = "Eek! Try again?, email please!"
                    self.passwordField.placeholder = "Eek! Try again?, password please!"
                }else{
                    currentUser = user!
                    //perform segue
                    self.performSegue(withIdentifier: "loginSuccess", sender: self)
                }
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

