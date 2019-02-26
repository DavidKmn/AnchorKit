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
    public func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: otherAnchor, multiplier: multiplier, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
    
    @discardableResult
    public func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
    
    @discardableResult
    public func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, multiplyBy multiplier: CGFloat = 1.0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
    
    @discardableResult
    public func equal(toConstant constant: CGFloat, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalToConstant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
    
    @discardableResult
    public func greaterThanOrEqual(toConstant constant: CGFloat, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
    
    @discardableResult
    public func lessThanOrEqual(toConstant constant: CGFloat, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
}

extension LayoutProperty where Anchor: LayoutAnchor {
    @discardableResult
    public func equal(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: otherAnchor, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }

    @discardableResult
    public func greaterThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }

    @discardableResult
    public func lessThanOrEqual(to otherAnchor: Anchor, offsetBy constant: CGFloat = 0, withPriority priority: AnchorPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant)
        constraint.priority = priority.layoutPriority
        return constraint.activate()
    }
}
