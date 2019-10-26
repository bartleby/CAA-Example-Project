//
//  SettingsCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//	Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class SettingsCoordinator: BaseCoordinator, SettingsCoordinatorType {
	override func start() {
        let module = container.resolve(SettingsAssembly.self).build(coordinator: self)
        router.setRootModule(module)
    }
}
