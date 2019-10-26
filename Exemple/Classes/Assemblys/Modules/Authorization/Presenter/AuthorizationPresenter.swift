//
//  AuthorizationPresenter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class AuthorizationPresenter: BasePresenter<AuthorizationInteractorInput, AuthorizationRouterProtocol>, AuthorizationModuleOutput {
    
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
        view?.set(title: "Authorization")
    }
    
    func loginDidTap() {
        router.dismiss()
    }
    
    func registrationDidTap() {
        router.showRegistration()
    }
}
