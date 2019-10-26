//
//  RegistrationContracts.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

// Module Input
protocol RegistrationModuleInput {
    
}

// Module Output
protocol RegistrationModuleOutput {
    
}

// View Input
protocol RegistrationViewInput: class {
    func set(title: String)
}

// View Output
protocol RegistrationViewOutput: class {
    func viewDidLoad()
    func registerDidTap()
}

// Interactor
protocol RegistrationInteractorInput {
}

// Router
protocol RegistrationRouterProtocol: AlertRoutable {
    func dismiss()
}
