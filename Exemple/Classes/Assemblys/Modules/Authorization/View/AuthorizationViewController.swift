//
//  AuthorizationViewController.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class AuthorizationViewController: UIViewController, AuthorizationViewInput {
    var output: AuthorizationViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: Button Action
extension AuthorizationViewController {
    @IBAction func cancelButtonAction(_ sender: Any) {
        output.cancelButtonDidTap()
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        output.authButtonDidTap()
    }
    
    @IBAction func registrationButtonAction(_ sender: Any) {
        output.registrationButtonDidTap()
    }
}
