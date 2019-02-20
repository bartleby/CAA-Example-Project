//
//  Data+Ext.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

extension Date {
    func toTimestamp() -> Int? {
        return Int(self.timeIntervalSince1970)
    }
    
    static func fromTimestamp(_ timestamp: Double) -> Date {
        let date = Date(timeIntervalSince1970: timestamp)
        return date
    }
    
}

extension Date {
    func convertToLocalTime(fromTimeZone timeZoneAbbreviation: String) -> Date? {
        if let timeZone = TimeZone(abbreviation: timeZoneAbbreviation) {
            let targetOffset = TimeInterval(timeZone.secondsFromGMT(for: self))
            let localOffeset = TimeInterval(TimeZone.autoupdatingCurrent.secondsFromGMT(for: self))
            
            return self.addingTimeInterval(targetOffset - localOffeset)
        }
        
        return nil
    }
}
