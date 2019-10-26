//
//  OnboardingPresenter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class OnboardingPresenter: BasePresenter<OnboardingInteractorInput, OnboardingRouterProtocol>, OnboardingModuleOutput {
    
    // MARK: - Weak properties
    weak var view: OnboardingViewInput?
}

// MARK: Private
extension OnboardingPresenter {
    
}

// MARK: Module Input
extension OnboardingPresenter: OnboardingModuleInput {
    
}

// MARK: View Output
extension OnboardingPresenter: OnboardingViewOutput {
    func viewDidLoad() {
        view?.set(title: "Onboarding")
    }
    
    func goDidTap() {
        router.dismiss()
    }
}
