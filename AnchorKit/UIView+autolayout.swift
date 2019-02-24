//
//  UIView+autolayout.swift
//  AnchorKit
//
//  Created by David on 24/02/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit.UIView

extension UIView {
    public func enableAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    public func disableAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = true
    }
}
