//
//  AuthCoordinator.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//	Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class AuthCoordinator: BaseCoordinator, AuthCoordinatorType {
    var onAuthCompleted: ((String) -> Void)?
    var onAuthCanceled: (() -> Void)?
    
    lazy var authModule: AuthorizationModule = {
        var authModule = container.resolve(AuthorizationAssembly.self).build()
        authModule.output.onAuthCanceled = { [weak self] in
            self?.onAuthCanceled?()
        }
        authModule.output.onAuthCompleted = { [weak self] token in
            self?.onAuthCompleted?(token)
        }
        authModule.output.onRegistrationCompleted = { [weak self] in
            self?.showRegistration()
        }
        
        return authModule
    }()
    
    lazy var registrationModule: RegistrationModule = {
        var registrationModule = container.resolve(RegistrationAssembly.self).build()
        registrationModule.output.onRegistrationCompleted = { [weak self] token in
            self?.onAuthCompleted?(token)
        }
        return registrationModule
    }()
    
    override func start() {
        router.setRootModule(authModule)
    }
    
    func showRegistration() {
        router.push(registrationModule)
    }
	
}
