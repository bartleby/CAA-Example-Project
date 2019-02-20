//
//  MainAssembly.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

typealias MainModule = Module<MainModuleInput, MainModuleOutput>

class MainAssembly: Assembly {
    func build() -> MainModule {
        
        // View
        let view = MainViewController.controllerFromStoryboard(.main)
        
        // Presenter
        let presenter = MainPresenter(view: view)
        
        // Dependency Setup
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
