//
//  AuthorizationContracts.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

// Module Input
protocol AuthorizationModuleInput {
    
}

// Module Output
protocol AuthorizationModuleOutput {
    
}

// View Input
protocol AuthorizationViewInput: class {
    func set(title: String)
}

// View Output
protocol AuthorizationViewOutput: class {
    func viewDidLoad()
    func loginDidTap()
    func registrationDidTap()
}

// Interactor
protocol AuthorizationInteractorInput {
}

// Router
protocol AuthorizationRouterProtocol: AlertRoutable {
    func dismiss()
    func showRegistration()
}
