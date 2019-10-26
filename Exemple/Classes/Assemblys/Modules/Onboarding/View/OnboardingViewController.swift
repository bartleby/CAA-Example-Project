//
//  OnboardingViewController.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingViewInput {
    var output: OnboardingViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
}

// MARK: - Configure
extension OnboardingViewController {
    
}

// MARK: View Input
extension OnboardingViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension OnboardingViewController {
    @IBAction func goButtonAction(_ sender: Any?) {
        output.goDidTap()
    }
}
