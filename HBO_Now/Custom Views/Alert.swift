//
//  Alert.swift
//  HBO_Now
//
//  Created by Gayani Madubhashini on 1/31/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import Foundation

class Alert {
    func showAlert(title: String,message: String, buttonText: String){
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        alert.addButton(withTitle: buttonText)
        alert.show()
    }

}
