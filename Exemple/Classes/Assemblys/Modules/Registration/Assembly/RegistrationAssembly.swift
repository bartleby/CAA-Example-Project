//
//  RegistrationAssembly.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

typealias RegistrationModule = Module<RegistrationModuleInput, RegistrationModuleOutput>

class RegistrationAssembly: Assembly {
    func build() -> RegistrationModule {
        
        // View
        let view = RegistrationViewController.controllerFromStoryboard(.registration)
        
        // Presenter
        let presenter = RegistrationPresenter()
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
