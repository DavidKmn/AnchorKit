//
//  UIView+LayoutProxy.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit.UIView

extension UIView {
    public func layout(using closure: (LayoutProxy) -> Void) {
        self.enableAutoLayout()
        closure(LayoutProxy(view: self))
    }
}
