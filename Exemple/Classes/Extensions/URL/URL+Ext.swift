//
//  URL+Ext.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

extension URL {
    func fileSize() -> Int64 {
        if let resourceValuess = try? (self as NSURL).resourceValues(forKeys: [URLResourceKey.fileSizeKey]) {
            let size = resourceValuess[URLResourceKey.fileSizeKey]
            return size as? Int64 ?? 0
        } else {
            return 0
        }
    }
}
