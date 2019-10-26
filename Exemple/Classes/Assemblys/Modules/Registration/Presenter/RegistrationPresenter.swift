//
//  RegistrationPresenter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class RegistrationPresenter: BasePresenter<RegistrationInteractorInput, RegistrationRouterProtocol>, RegistrationModuleOutput {
    
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
        view?.set(title: "Registration")
    }
    
    func registerDidTap() {
        router.dismiss()
    }
}
