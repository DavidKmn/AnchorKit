//
//  LayoutProxy.swift
//  AnchorKit
//
//  Created by David on 26/12/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

public final class LayoutProxy {
    
    public lazy var safeLeading = property(with: view.safeLeadingAnchor)
    public lazy var safeTrailing = property(with: view.safeTrailingAnchor)
    public lazy var safeTop = property(with: view.safeTopAnchor)
    public lazy var safeBottom = property(with: view.safeBottomAnchor)
    
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    public lazy var centerX = property(with: view.centerXAnchor)
    public lazy var centerY = property(with: view.centerYAnchor)
    
    private let view: UIView
    
    public init(view: UIView) {
        self.view = view
    }
    
    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }
}
