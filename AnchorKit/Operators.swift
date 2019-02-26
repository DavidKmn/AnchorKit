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

@discardableResult
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func ==<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.equal(to: rhs)
}

@discardableResult
public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func >=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func >=<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.greaterThanOrEqual(toConstant: rhs)
}

@discardableResult
public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>,
                         rhs: (A, CGFloat)) -> NSLayoutConstraint {
    return lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@discardableResult
public func <=<A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) -> NSLayoutConstraint {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func <=<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.lessThanOrEqual(toConstant: rhs)
}


@discardableResult
public func ==<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) -> NSLayoutConstraint {
        return lhs.equal(to: rhs.0, multiplyBy: rhs.1)
}

/// button.heightAnchor == view.heightAnchor * 0.3
public func *<A: LayoutDimensionAnchor>(lhs: A,
                                        rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

@discardableResult
public func ==<A: LayoutDimensionAnchor>(lhs: LayoutProperty<A>, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.equal(toConstant: rhs)
}
