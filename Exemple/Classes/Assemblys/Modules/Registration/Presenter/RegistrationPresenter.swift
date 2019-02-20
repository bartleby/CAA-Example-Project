//
//  RegistrationPresenter.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

class RegistrationPresenter: RegistrationModuleOutput {
    var onRegistrationCompleted: ((String) -> Void)?
    
    // MARK: - Weak properties
    weak var view: RegistrationViewInput?
}

// MARK: Private
extension RegistrationPresenter {
    
}

// MARK: Module Input
extension RegistrationPresenter: RegistrationModuleInput {
    
}

// MARK: View Output
extension RegistrationPresenter: RegistrationViewOutput {
    func viewDidLoad() {
        
    }
    
    func registerButtonDidTap() {
        onRegistrationCompleted?("Registration token")
    }
}
