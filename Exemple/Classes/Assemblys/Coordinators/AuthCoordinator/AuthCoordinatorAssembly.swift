//
//  AuthCoordinatorAssembly.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//	Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class AuthCoordinatorAssembly: Assembly {
    func build() -> AuthCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)

        let coordinator = AuthCoordinator(container: container, router: router)
        return coordinator
    }
}
