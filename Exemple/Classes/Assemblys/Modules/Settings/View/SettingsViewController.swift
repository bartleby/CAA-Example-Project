//
//  SettingsViewController.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, SettingsViewInput {
    var output: SettingsViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension SettingsViewController {
    
}

// MARK: View Input
extension SettingsViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension SettingsViewController {
    
}
