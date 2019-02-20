//
//  MainPresenter.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import Foundation

class MainPresenter: MainModuleOutput {
    
    init(view: MainViewInput) {
        self.view = view
    }
    
    // MARK: - Weak properties
    weak var view: MainViewInput?
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    
}


// MARK: View Output
extension MainPresenter: MainViewOutput {
    func viewDidLoad() {
        
    }
}
