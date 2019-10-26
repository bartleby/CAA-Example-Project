//
//  OnboardingCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//	Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorType {
	override func start() {
        let module = container.resolve(OnboardingAssembly.self).build(coordinator: self)
        router.setRootModule(module)
    }
}
