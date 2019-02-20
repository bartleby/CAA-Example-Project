//
//  NSObject+Ext.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
