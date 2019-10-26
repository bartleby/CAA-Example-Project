//
//  SettingsPresenter.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import Foundation

class SettingsPresenter: BasePresenter<SettingsInteractorInput, SettingsRouterProtocol>, SettingsModuleOutput {
    
    // MARK: - Weak properties
    weak var view: SettingsViewInput?
}

// MARK: Private
extension SettingsPresenter {
    
}

// MARK: Module Input
extension SettingsPresenter: SettingsModuleInput {
    
}

// MARK: View Output
extension SettingsPresenter: SettingsViewOutput {
    func viewDidLoad() {
        view?.set(title: "Settings")
    }
}
