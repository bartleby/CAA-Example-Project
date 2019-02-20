//
//  AuthorizationProtocols.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

// Module Input
protocol AuthorizationModuleInput {
    
}

// Module Output
protocol AuthorizationModuleOutput {
    var onAuthCanceled: (() -> Void)? { get set }
    var onAuthCompleted: ((String) -> Void)? { get set }
    var onRegistrationCompleted: (() -> Void)? { get set }
}

// View Input
protocol AuthorizationViewInput: AnyObject {
    
}

// View Output
protocol AuthorizationViewOutput: AnyObject {
    func viewDidLoad()
    
    func authButtonDidTap()
    func cancelButtonDidTap()
    func registrationButtonDidTap()
}
