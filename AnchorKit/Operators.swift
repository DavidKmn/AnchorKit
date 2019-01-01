//
//  Operators.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

public func +<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

public func -<A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}

public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}

public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>,
                         rhs: (A, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.lessThanOrEqual(to: rhs)
}

public func ==<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
        lhs.equal(to: rhs.0, multiplyBy: rhs.1)
}

/// button.heightAnchor == view.heightAnchor * 0.3
public func *<A: LayoutDimensionAnchor>(lhs: A,
                                        rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

public func ==<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.equal(toConstant: rhs)
}

public func with<A: LayoutDimensionAnchor>(lhs: A, priority: UILayoutPriority) {
    
}
