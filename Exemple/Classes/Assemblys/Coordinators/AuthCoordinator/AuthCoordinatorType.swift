//
//  AuthCoordinatorType.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//	Copyright © 2019 idevs. All rights reserved.
//

import Foundation

protocol AuthCoordinatorType: CoordinatorType, Presentable {
    var onAuthCompleted: ((String) -> Void)? { set get }
    var onAuthCanceled: (() -> Void)? { set get }
}
