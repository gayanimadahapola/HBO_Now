//
//  LoginViewController.swift
//  HBO_Now
//
//  Created by Gayani Madubhashini on 1/29/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var InfoLabel: UILabel!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var TxtView: UITextView!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    @IBOutlet weak var CheckboxButton: CheckBox!
    
    @IBOutlet weak var txtViewPrivacy: UITextView!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var signInTextField: UITextField!
    
    @IBOutlet weak var signInbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     self.addUIStyles()
    }
    
    func addUIStyles(){
        
//        firstNameTextField.layer.cornerRadius = 10
//        firstNameTextField.layer.maskedCorners = .layerMinXMinYCorner
        
    }
    
    
    @IBAction func RegisterBtnTapped(_ sender: Any) {
        
        let validator = ValidateFields()
        
        if(validator.usernameValid(username: (emailTextField.text ?? "")) && validator.passwordValid(password: passwordTextField.text ?? "")) {
            
            let alert = Alert()
            
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
                
                authResult, error in
                if ((error == nil)) {
                    
                    alert.showAlert(title: "Signed up successfully", message: "You have been successfully Signed up", buttonText: "Dashboard")
                    
                } else {
                    
                    alert.showAlert(title: "Error", message: "Error occured", buttonText: "Dashboard")
                }
                
            }
            
        }else{
            
            let alert = Alert()
            
            alert.showAlert(title: "Error", message: "Username or password is invalid", buttonText: "Register")
        }
        
    }
        
}
func SignInBtnTapped(_ sender: Any) {
    }
    

