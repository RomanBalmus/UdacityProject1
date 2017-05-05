//
//  LoginViewController.swift
//  RomanNumeralCalculator
//
//  Created by iOS on 05/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.isHidden=false
    }
    
    @IBAction func facebookSignInBtnTapped(_ sender: Any) {
        
    
    }
    @IBAction func closeBtnTapped(_ sender: Any) {
        AppConfig.sharedInstance.userIsLogged=true

        self.dismiss(animated: true) {
            
        }
    }
}
