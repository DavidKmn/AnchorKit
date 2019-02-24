//
//  UIView+safeAnchors.swift
//  AnchorKit
//
//  Created by David on 24/02/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit.UIView

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
