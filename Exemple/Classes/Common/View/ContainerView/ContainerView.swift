//
//  ContainerView.swift
//  Exemple
//
//  Created by Bart on 26.10.2019
//  Copyright © 2019 iDevs.io. All rights reserved.
//

import UIKit

class ContainerView: UIView {
    var controller: UIViewController?
    
    func embedViewController(_ controller: UIViewController) {
        self.controller = controller
        controller.view.frame = self.bounds
        self.addSubview(controller.view)
    }
    
    func clear() {
        for item in self.subviews {
            item.removeFromSuperview()
        }
        controller?.removeFromParent()
        controller = nil
    }
    
    override func removeFromSuperview() {
        super.removeFromSuperview()
    }
    
    override func setNeedsUpdateConstraints() {
        super.setNeedsUpdateConstraints()
        controller?.view.setNeedsUpdateConstraints()
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        controller?.view.setNeedsLayout()
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        controller?.view.layoutIfNeeded()
    }
}
