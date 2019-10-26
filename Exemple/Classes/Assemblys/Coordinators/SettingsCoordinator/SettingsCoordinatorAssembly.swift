//
//  SettingsCoordinatorAssembly.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//	Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class SettingsCoordinatorAssembly: Assembly {
    func build() -> SettingsCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)
        let coordinator = SettingsCoordinator(container: container, router: router)
        return coordinator
    }
}
