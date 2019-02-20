//
//  OnboardingProtocols.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

// Module Input
protocol OnboardingModuleInput {
    
}

// Module Output
protocol OnboardingModuleOutput {
    var onCompleted: (() -> Void)? { set get }
}
