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
    
    @IBOutlet weak var txtViewPrivacy: UITextView!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var signInTextField: UITextField!
    
    @IBOutlet weak var signInbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        
    }
    
    @IBAction func RegisterBtnTapped(_ sender: Any) {
    }
    
    @IBAction func SignInBtnTapped(_ sender: Any) {
    }
    
}
