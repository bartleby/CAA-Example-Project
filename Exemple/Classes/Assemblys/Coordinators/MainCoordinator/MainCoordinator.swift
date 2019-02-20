//
//  MainCoordinator.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator, MainCoordinatorType {
    override func start() {
        let mainModule = container.resolve(MainAssembly.self).build()
        router.setRootModule(mainModule)
    }
    
    override func toPresent() -> UIViewController {
        return router.rootViewController!
    }
}
