//
//  OnboardingContracts.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

// Module Input
protocol OnboardingModuleInput {
    
}

// Module Output
protocol OnboardingModuleOutput {
    
}

// View Input
protocol OnboardingViewInput: class {
    func set(title: String)
}

// View Output
protocol OnboardingViewOutput: class {
    func viewDidLoad()
    func goDidTap()
}

// Interactor
protocol OnboardingInteractorInput {
}

// Router
protocol OnboardingRouterProtocol: AlertRoutable {
    func dismiss()
}
