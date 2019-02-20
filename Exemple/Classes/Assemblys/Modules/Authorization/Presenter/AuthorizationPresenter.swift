//
//  AuthorizationPresenter.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

class AuthorizationPresenter: AuthorizationModuleOutput {
    
    var onAuthCanceled: (() -> Void)?
    var onAuthCompleted: ((String) -> Void)?
    var onRegistrationCompleted: (() -> Void)?
    
    // MARK: - Weak properties
    weak var view: AuthorizationViewInput?
}

// MARK: Private
extension AuthorizationPresenter {
    
}

// MARK: Module Input
extension AuthorizationPresenter: AuthorizationModuleInput {
    
}

// MARK: View Output
extension AuthorizationPresenter: AuthorizationViewOutput {
    
    func viewDidLoad() {
        
    }
    
    func authButtonDidTap() {
        onAuthCompleted?("auth token")
    }
    
    func cancelButtonDidTap() {
        onAuthCanceled?()
    }
    
    func registrationButtonDidTap() {
        onRegistrationCompleted?()
    }
    
}
