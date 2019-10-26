//
//  TabBarCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//	Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class TabBarCoordinator: BaseCoordinator, TabBarCoordinatorType {
    var tabBarPresenter: TabBarPresenter!
    
    override func start() {
        tabBarPresenter = TabBarPresenter(items: [
            TabBarItem(title: "Main", viewController: mainViewController()),
            TabBarItem(title: "Settings", viewController: settingsViewController())
        ])
    }
    
    override func toPresent() -> UIViewController {
        return tabBarPresenter.toPresent()
    }
}

extension TabBarCoordinator {
    func mainViewController() -> UIViewController {
        let coordinator = container.resolve(MainCoordinatorAssembly.self).build()
        self.addChild(coordinator)
        coordinator.start()
        return coordinator.toPresent()
    }
    
    func settingsViewController() -> UIViewController {
        let coordinator = container.resolve(SettingsCoordinatorAssembly.self).build()
        self.addChild(coordinator)
        coordinator.start()
        return coordinator.toPresent()
    }
}
