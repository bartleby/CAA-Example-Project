//
//  RegistrationViewController.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, RegistrationViewInput {
    var output: RegistrationViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension RegistrationViewController {
    
}

// MARK: View Input
extension RegistrationViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension RegistrationViewController {
    @IBAction func registerButtonAction(_ sender: Any?) {
        output.registerDidTap()
    }
}
