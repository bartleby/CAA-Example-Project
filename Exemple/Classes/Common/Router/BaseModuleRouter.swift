//
//  BaseModuleRouter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

protocol BaseModuleRoutable {
    var coordinator: CoordinatorType {set get}
    var container: Container {set get}
}

class BaseModuleRouter: BaseModuleRoutable {
    var coordinator: CoordinatorType
    var container: Container
    
    init(coordinator: CoordinatorType) {
        self.coordinator = coordinator
        self.container = coordinator.container
    }
}

extension BaseModuleRouter: Presentable {
    func toPresent() -> UIViewController {
        return coordinator.toPresent()
    }
}
