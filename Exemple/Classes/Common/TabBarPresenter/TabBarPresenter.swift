//
//  TabBarPresenter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019.
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class TabBarItem {
    let title: String
    let viewController: UIViewController
    let image: UIImage?
    let selectedImage: UIImage?
    
    init(title: String, viewController: UIViewController, image: UIImage? = nil, selectedImage: UIImage? = nil) {
        self.title = title
        self.viewController = viewController
        self.image = image
        self.selectedImage = selectedImage
    }
}

class TabBarPresenter: Presentable {
    let items: [TabBarItem]

    init(items: [TabBarItem]) {
        self.items = items
    }
    
    private func tabBarViewControllers() -> [UIViewController] {
        return items.map{
            let tabBarItem = UITabBarItem(title: $0.title, image: $0.image, selectedImage: $0.selectedImage)
            $0.viewController.tabBarItem = tabBarItem
            return $0.viewController
        }
    }
    
    func toPresent() -> UIViewController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = tabBarViewControllers()
        return tabBarController
    }
}

