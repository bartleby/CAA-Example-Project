//
//  RegistrationProtocols.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

// Module Input
protocol RegistrationModuleInput {
    
}

// Module Output
protocol RegistrationModuleOutput {
    var onRegistrationCompleted: ((String) -> Void)? { set get }
}

// View Input
protocol RegistrationViewInput: AnyObject {
    
}

// View Output
protocol RegistrationViewOutput: AnyObject {
    func viewDidLoad()
    func registerButtonDidTap()
}
