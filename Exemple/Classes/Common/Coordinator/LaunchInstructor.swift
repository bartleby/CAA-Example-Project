//
//  LaunchInstructor.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

enum LaunchInstructor {
    case main
    case auth
    case onboarding
    
    static func configure(tutorialWasShown: Bool, isAutorized: Bool) -> LaunchInstructor {
        switch (tutorialWasShown, isAutorized) {
        case (true, false), (false, false): return .auth
        case (false, true): return .onboarding
        case (true, true): return .main
        }
    }
}
