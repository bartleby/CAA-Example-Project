//
//  OnboardingViewController.swift
//  Exemple
//
//  Created by bart on 17/02/2019
//  Copyright © 2019 idevs. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingModuleOutput {
    
    var onCompleted: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Module Input
extension OnboardingViewController: OnboardingModuleInput {
    
}

// MARK: Button Action
extension OnboardingViewController {
    @IBAction func completeOnboardingButtonAction(_ sender: UIButton) {
        onCompleted?()
    }
}
