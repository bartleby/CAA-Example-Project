//
//  WeakContainer.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class WeakContainer<T> {
    fileprivate weak var _value: AnyObject?
    var value: T? {
        set { self._value = newValue as AnyObject }
        get { return _value as? T }
    }
    
    init(value: T) {
        self._value = value as AnyObject
    }
}
