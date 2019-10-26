//
//  MainCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator, MainCoordinatorType {
    override func start() {
        let module = container.resolve(MainAssembly.self).build(coordinator: self)
        router.setRootModule(module)
    }
}
