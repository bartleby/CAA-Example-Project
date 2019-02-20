//
//  ActionCloud.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

struct ActionBox {
    typealias Action = () -> Void
    let action: Action
}

class ActionCloud {
    var actions = [String: ActionBox]()
    
    func add(eventKey: String, action: @escaping ActionBox.Action) {
        actions[eventKey] = ActionBox(action: action)
    }
    
    func run(_ actionKey: String) {
        if let actionBox = actions[actionKey] {
            actionBox.action()
        }
    }
}
