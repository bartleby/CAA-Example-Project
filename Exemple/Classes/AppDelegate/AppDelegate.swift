//
//  AppDelegate.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: AppDelegateManager {
    var window: UIWindow?
    
    lazy var container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        // Setup Coordinators
        container.apply(AppCoordinatorAssembly.self)
        container.apply(MainCoordinatorAssembly.self)
        container.apply(SettingsCoordinatorAssembly.self)
        container.apply(TabBarCoordinatorAssembly.self)
        container.apply(AuthorizationCoordinatorAssembly.self)
        container.apply(OnboardingCoordinatorAssembly.self)
        
        // Setup Modules
        container.apply(MainAssembly.self)
        container.apply(SettingsAssembly.self)
        container.apply(AuthorizationAssembly.self)
        container.apply(OnboardingAssembly.self)
        container.apply(RegistrationAssembly.self)
        
        // Setup Services
        container.apply(AppConfigServiceAssembly.self)
        container.apply(EnvironmentServiceAssembly.self)
        
        
        return container
    }()
    
    override var services: [AppDelegateService] {
        return [
            ApplicationService(container: container, window: window)
        ]
    }
}

