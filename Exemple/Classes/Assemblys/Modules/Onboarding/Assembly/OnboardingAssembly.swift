//
//  OnboardingAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

typealias OnboardingModule = Module<OnboardingModuleInput, OnboardingModuleOutput>

class OnboardingAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> OnboardingModule {
        // View
        let view = OnboardingViewController.controllerFromStoryboard("Onboarding")
        
        // Interactor
        let interactor = OnboardingInteractor()
        
        // Router
        let router = OnboardingRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = OnboardingPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
