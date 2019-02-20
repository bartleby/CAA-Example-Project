//
//  AuthorizationAssembly.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

typealias AuthorizationModule = Module<AuthorizationModuleInput, AuthorizationModuleOutput>

class AuthorizationAssembly: Assembly {
    func build() -> AuthorizationModule {
        
        // View
        let view = AuthorizationViewController.controllerFromStoryboard(.auth)
        
        // Presenter
        let presenter = AuthorizationPresenter()
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
