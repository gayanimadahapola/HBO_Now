//
//  SignUpViewController.swift
//  HBO_Now
//
//  Created by Gayani Madubhashini on 1/29/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var ForgotPwdLabel: UILabel!
    @IBOutlet weak var SubscriptionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSylesToSignIn()
    }
    func addSylesToSignIn() {
        
        EmailTextField.layer.cornerRadius = 10
        PasswordTextField.layer.cornerRadius = 10
        
        
        SubscriptionButton.layer.cornerRadius = 5
        SubscriptionButton.layer.borderColor = UIColor.gray.cgColor
        
    }
    
    
    @IBAction func SignInButtonTapped(_ sender: Any) {
        
        let alert = Alert();
        
        Auth.auth().signIn(withEmail: EmailTextField.text!, password: PasswordTextField.text!) { (user, error) in
            if error != nil {
                
                alert.showAlert(title: "Error occured", message: "You have error with your mail and password", buttonText: "Dashboard")
            }
            else if user != nil {
                
                alert.showAlert(title: "Signed in successfuly!!", message: "You have been successfully Signed In", buttonText: "Dashboard")
                
                let ViewController = self.storyboard!.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                
                let navController = UINavigationController(rootViewController: ViewController)
                
                self.present(navController, animated:true, completion: nil)
            }
        }
    }
    
    @IBAction func SubscriptionButtonTapped(_ sender: Any) {
    }
    

}
