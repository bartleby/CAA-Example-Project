//
//  SettingsContracts.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

// Module Input
protocol SettingsModuleInput {
    
}

// Module Output
protocol SettingsModuleOutput {
    
}

// View Input
protocol SettingsViewInput: class {
    func set(title: String)
}

// View Output
protocol SettingsViewOutput: class {
    func viewDidLoad()
}

// Interactor
protocol SettingsInteractorInput {
}

// Router
protocol SettingsRouterProtocol: AlertRoutable {
    
}
