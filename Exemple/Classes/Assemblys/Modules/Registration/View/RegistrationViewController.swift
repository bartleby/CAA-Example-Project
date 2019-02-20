//
//  RegistrationViewController.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, RegistrationViewInput {
    var output: RegistrationViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: Button Action
extension RegistrationViewController {
    @IBAction func registerButtonAction(_ sender: Any) {
        output.registerButtonDidTap()
    }
}
