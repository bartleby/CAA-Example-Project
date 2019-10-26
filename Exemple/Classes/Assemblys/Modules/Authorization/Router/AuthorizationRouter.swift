//
//  AuthorizationRouter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class AuthorizationRouter: BaseModuleRouter, AuthorizationRouterProtocol {
    func dismiss() {
        coordinator.completion?()
    }
    
    func showRegistration() {
        let module = container.resolve(RegistrationAssembly.self).build(coordinator: coordinator)
        coordinator.router.push(module)
    }
}
