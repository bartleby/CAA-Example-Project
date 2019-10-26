//
//  SettingsAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

typealias SettingsModule = Module<SettingsModuleInput, SettingsModuleOutput>

class SettingsAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> SettingsModule {
        // View
        let view = SettingsViewController.controllerFromStoryboard("Settings")
        
        // Interactor
        let interactor = SettingsInteractor()
        
        // Router
        let router = SettingsRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = SettingsPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
