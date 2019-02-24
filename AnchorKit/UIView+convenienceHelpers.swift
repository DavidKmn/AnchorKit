//
//  UIView+helpers.swift
//  AnchorKit
//
//  Created by David on 24/02/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit.UIView

public enum AnchorPriority {
    case required
    case low
    case high
    
    public var layoutPriority: UILayoutPriority {
        switch self {
        case .required:
            return .required
        case .low:
            return .defaultLow
        case .high:
            return .defaultHigh
        }
    }
}

extension UIView {
    
    public func fillSuperview() {
        if let superview = self.superview {
            self.layout(using: {
                $0.top == superview.topAnchor
                $0.leading == superview.leadingAnchor
                $0.trailing == superview.trailingAnchor
                $0.bottom == superview.bottomAnchor
            })
        }
    }
    
    public func safeFillSuperview() {
        if let superview = self.superview {
            self.layout(using: {
                $0.safeTop == superview.safeTopAnchor
                $0.safeLeading == superview.safeLeadingAnchor
                $0.safeTrailing == superview.safeTrailingAnchor
                $0.safeBottom == superview.safeBottomAnchor
            })
        }
    }
    
    public func centerXtoSuperview(withOffset offset: CGFloat = 0) {
        if let superview = self.superview {
            self.layout(using: {
                $0.centerX == superview.centerXAnchor + offset
            })
        }
    }
    
    public func centerYtoSuperview(withOffset offset: CGFloat = 0) {
        if let superview = self.superview {
            self.layout(using: {
                $0.centerY == superview.centerYAnchor + offset
            })
        }
    }
    
    public func centerInSuperview() {
        centerYtoSuperview()
        centerXtoSuperview()
    }
    
    public func anchorSizeEqual(to view: UIView, with edgeInsets: UIEdgeInsets = UIEdgeInsets.zero) {
        self.layout(using: {
            $0.leading == view.leadingAnchor + edgeInsets.left
            $0.trailing == view.trailingAnchor - edgeInsets.right
            $0.bottom == view.bottomAnchor - edgeInsets.bottom
            $0.top == view.topAnchor + edgeInsets.top
        })
    }
    
    public func anchorHeight(toConstant constant: CGFloat) {
        self.layout(using: {
            $0.height == constant
        })
    }
    
    public func anchorHeight(to dimensionAnchor: NSLayoutDimension, withMultiplier multiplier: CGFloat = 1) {
        self.layout(using: {
            $0.height == dimensionAnchor * multiplier
        })
    }
    
    public func anchorWidth(toConstant constant: CGFloat) {
        self.layout(using: {
            $0.width == constant
        })
    }
    
    public func anchorWidth(to dimensionAnchor: NSLayoutDimension, withMultiplier multiplier: CGFloat = 1) {
        self.layout(using: {
            $0.width == dimensionAnchor * multiplier
        })
    }
}
