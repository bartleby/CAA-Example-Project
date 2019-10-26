//
//  UIScrollView+Ext.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

extension UITableView {
    func scrollToBottom() {
        let lastSectionIndex = numberOfSections - 1
        if lastSectionIndex >= 0 {
            let lastRowIndex = numberOfRows(inSection: lastSectionIndex) - 1
            if lastRowIndex >= 0 {
                let pathToLastRow = IndexPath(row: lastRowIndex, section: lastSectionIndex)
                scrollToRow(at: pathToLastRow, at: .bottom, animated: false)
            }
        }
    }
}
