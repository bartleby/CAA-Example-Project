//
//  StrongBox.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

protocol StrongBox: class {
    var strongBoxHolder: [String : AnyObject] { set get }
}

extension StrongBox {
    func strongBox<T>(_ configure: () -> T) -> T {
        let key = ObjectKey(T.self).key
        if let object = self.strongBoxHolder[key] {
            return object as! T
        }
        let object = configure()
        strongBoxHolder[key] = object as AnyObject
        return object
    }
}
