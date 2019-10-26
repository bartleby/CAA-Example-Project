//
//  BaseCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class BaseCoordinator: CoordinatorType {
    var completion: (() -> Void)?
    
    let container: Container
    let router: RouterType
    
    init(container: Container, router: RouterType) {
        self.container = container
        self.router = router
    }
    
    var childCoordinators: [CoordinatorType] = []
    
    func start() {
        start(with: nil)
    }
    
    func start(with option: DeepLinkOption?) { }
    
    // add only unique object
    func addChild(_ coordinator: CoordinatorType) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
    }
    
    func removeChild(_ coordinator: CoordinatorType?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }
        
        // Clear child-coordinators recursively
        if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinators.isEmpty {
            coordinator.childCoordinators.filter({ $0 !== coordinator }).forEach({ coordinator.removeChild($0) })
        }
        
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }
    
    func toPresent() -> UIViewController {
        return router.toPresent()
    }
}
