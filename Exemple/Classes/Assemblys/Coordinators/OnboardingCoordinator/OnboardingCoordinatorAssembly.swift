//
//  OnboardingCoordinatorAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//	Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class OnboardingCoordinatorAssembly: Assembly {
    func build() -> OnboardingCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)
        let coordinator = OnboardingCoordinator(container: container, router: router)
        return coordinator
    }
}
