//
//  OnboardingAssembly.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

typealias OnboardingModule = Module<OnboardingModuleInput, OnboardingModuleOutput>

class OnboardingAssembly: Assembly {
    func build() -> OnboardingModule {
        
        // View
        let view = OnboardingViewController.controllerFromStoryboard(.onboarding)
        
        return Module(view: view, input: view, output: view)
    }
}
