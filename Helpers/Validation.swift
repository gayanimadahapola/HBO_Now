//
//  Validation.swift
//  HBO_Now
//
//  Created by Gayani Madubhashini on 1/31/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
class ValidateFields {
    
    func usernameValid(username : String) -> Bool {
        return username.count > 5
    }
    func passwordValid(password : String) -> Bool {
        return password.count > 8
    }
    
    func validateMovieForm(name: String,director: String,rating : String) -> Bool{
        
        if(name.count>3 && director.count>3 &&  (Int(rating) != nil)){
            
            return true;
        }
        return false;
        
    }
    
}
//func isValidEmail(email: String) -> Bool {
//    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//
//    return emailPred.evaluate(with: email)
//}
