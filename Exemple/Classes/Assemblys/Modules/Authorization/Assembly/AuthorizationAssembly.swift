//
//  AuthorizationAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

typealias AuthorizationModule = Module<AuthorizationModuleInput, AuthorizationModuleOutput>

class AuthorizationAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> AuthorizationModule {
        // View
        let view = AuthorizationViewController.controllerFromStoryboard("Authorization")
        
        // Interactor
        let interactor = AuthorizationInteractor()
        
        // Router
        let router = AuthorizationRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = AuthorizationPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
