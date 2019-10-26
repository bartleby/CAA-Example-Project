//
//  OnboardingRouter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class OnboardingRouter: BaseModuleRouter, OnboardingRouterProtocol {
    func dismiss() {
        coordinator.completion?()
    }
}
