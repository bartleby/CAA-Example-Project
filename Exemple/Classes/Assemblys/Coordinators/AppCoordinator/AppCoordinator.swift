//
//  AppCoordinator.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

class AppCoordinator: BaseCoordinator, AppCoordinatorType {
    private var onboardingWasShown: Bool {
        set { appConfig.setConfig(value: newValue, for: .onboardingWasShown) }
        get { return appConfig.obtainConfig(for: .onboardingWasShown) }
    }
    
    private var authToken: String {
        set { appConfig.setConfig(value: newValue, for: .authToken) }
        get { return appConfig.obtainConfig(for: .authToken) }
    }
    
    private lazy var appConfig: AppConfigServiceType = {
        return container.resolve(AppConfigServiceAssembly.self).build()
    }()
    
    private var instructor: LaunchInstructor {
        return LaunchInstructor.configure(tutorialWasShown: onboardingWasShown, isAutorized: !authToken.isEmpty)
    }
    
    override func start(with option: DeepLinkOption?) {
        if let option = option {
            switch option {
            case .home:
                startMainFlow()
            }
        } else {
            switch instructor {
            case .auth: startAuthFlow()
            case .onboarding: startOnboardingFlow()
            case .main: startMainFlow()
            }
        }
    }
}

// MARK: Main Flow
extension AppCoordinator {
    func startMainFlow() {
        let mainCoordinator = container.resolve(MainCoordinatorAssembly.self).build(router: router)
        addChild(mainCoordinator)
        mainCoordinator.start()
        
        self.router.setRootModule(mainCoordinator)
    }
}

// MARK: Auth Flow
extension AppCoordinator {
    func startAuthFlow() {
        let authCoordinator = container.resolve(AuthCoordinatorAssembly.self).build()
        authCoordinator.onAuthCanceled = { [weak self, weak authCoordinator] in
            self?.removeChild(authCoordinator)
            self?.router.dismissModule()
            self?.start()
        }
        
        authCoordinator.onAuthCompleted = { [weak self, weak authCoordinator] token in
            self?.authToken = token
            self?.removeChild(authCoordinator)
            self?.router.dismissModule()
            self?.start()
        }
        
        addChild(authCoordinator)
        authCoordinator.start()
        self.router.present(authCoordinator)
    }
}

// MARK: Onboarding Flow
extension AppCoordinator {
    func startOnboardingFlow() {
        var onboardingModule = container.resolve(OnboardingAssembly.self).build()
        onboardingModule.output.onCompleted = { [weak self] in
            self?.onboardingWasShown = true
            self?.start()
        }
        router.setRootModule(onboardingModule, hideBar: true)
    }
}
