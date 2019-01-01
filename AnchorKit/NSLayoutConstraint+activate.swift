//
//  NSLayoutConstraint+activate.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    @discardableResult
    public func activate() -> Self {
        self.isActive = true
        return self
    }
    
    @discardableResult
    public func deactivate() -> Self {
        self.isActive = false
        return self
    }
}
