//
//  RegistrationAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

typealias RegistrationModule = Module<RegistrationModuleInput, RegistrationModuleOutput>

class RegistrationAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> RegistrationModule {
        // View
        let view = RegistrationViewController.controllerFromStoryboard("Registration")
        
        // Interactor
        let interactor = RegistrationInteractor()
        
        // Router
        let router = RegistrationRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = RegistrationPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
