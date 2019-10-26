//
//  AuthorizationViewController.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class AuthorizationViewController: UIViewController, AuthorizationViewInput {
    var output: AuthorizationViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension AuthorizationViewController {
    func configureNavigationBar() {
        let loginButton = UIBarButtonItem(title: "login", style: .done, target: self, action: #selector(loginButtonAction(_:)))
        navigationItem.rightBarButtonItem = loginButton
    }
}

// MARK: View Input
extension AuthorizationViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension AuthorizationViewController {
    @objc func loginButtonAction(_ sender: Any?) {
        output.loginDidTap()
    }
    
    @IBAction func registrationButtonAction(_ sender: Any?) {
        output.registrationDidTap()
    }
}
