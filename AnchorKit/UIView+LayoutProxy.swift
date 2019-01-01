//
//  UIView+LayoutProxy.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
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

extension UIView {
    public func layout(using closure: (LayoutProxy) -> Void) {
        self.enableAutoLayout()
        closure(LayoutProxy(view: self))
    }
}

extension UIView {
    public var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.leadingAnchor
        } else {
            return layoutMarginsGuide.leadingAnchor
        }
    }
    
    public var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.topAnchor
        } else {
            return layoutMarginsGuide.topAnchor
        }
    }
    
    public var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.bottomAnchor
        } else {
            return layoutMarginsGuide.bottomAnchor
        }
    }
    
    public var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide.trailingAnchor
        } else {
            return layoutMarginsGuide.trailingAnchor
        }
    }
}
