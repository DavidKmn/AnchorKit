//
//  LayoutProperty.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

public struct LayoutProperty<Anchor: LayoutAnchor> {
    fileprivate let anchor: Anchor
    
    public init(anchor: Anchor) {
        self.anchor = anchor
    }
}

extension LayoutProperty where Anchor: LayoutDimensionAnchor {
    @discardableResult
    public func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        return anchor.constraint(equalTo: otherAnchor, multiplier: multiplier, constant: constant).activate()
    }
    
    @discardableResult
    public func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        return anchor.constraint(greaterThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant).activate()
    }
    
    @discardableResult
    public func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        return anchor.constraint(lessThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant).activate()
    }
    
    @discardableResult
    public func equal(toConstant constant: CGFloat) -> NSLayoutConstraint {
        return anchor.constraint(equalToConstant: constant).activate()
    }
}

extension LayoutProperty where Anchor: LayoutAnchor {
    
    @discardableResult
    public func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        return anchor.constraint(equalTo: otherAnchor, constant: constant).activate()
    }

    @discardableResult
    public func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        return anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant).activate()
    }

    @discardableResult
    public func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        return anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant).activate()
    }
}
