//
//  AppCoordinator.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class AppCoordinator: BaseCoordinator, AppCoordinatorType {
    private var config: AppConfigServiceType {
        return container.resolve(AppConfigServiceAssembly.self).build()
    }
    
    private var instructor: LaunchInstructor {
        let tutorialWasShown: Bool = config.obtain(for: .onboardingWasShown)
        let autorizedToken: String = config.obtain(for: .authToken)
        return LaunchInstructor.configure(tutorialWasShown: tutorialWasShown, isAutorized: !autorizedToken.isEmpty)
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
        let coordinator = container.resolve(TabBarCoordinatorAssembly.self).build()
        addChild(coordinator)
        coordinator.start()
        self.router.setRootModule(coordinator, hideBar: true)
    }
}

// MARK: Auth Flow
extension AppCoordinator {
    func startAuthFlow() {
        let coordinator = container.resolve(AuthorizationCoordinatorAssembly.self).build()
        coordinator.completion = { [weak self, weak coordinator] in
            self?.removeChild(coordinator)
            self?.router.dismissModule()
            self?.config.set(value: "token", for: .authToken)
            self?.start()
        }
        addChild(coordinator)
        coordinator.start()
        self.router.present(coordinator)
    }
}

// MARK: Onboarding Flow
extension AppCoordinator {
    func startOnboardingFlow() {
        let coordinator = container.resolve(OnboardingCoordinatorAssembly.self).build()
        coordinator.completion = { [weak self, weak coordinator] in
            self?.removeChild(coordinator)
            self?.router.dismissModule()
            self?.config.set(value: true, for: .onboardingWasShown)
            self?.start()
        }
        addChild(coordinator)
        coordinator.start()
        self.router.present(coordinator)
    }
}
