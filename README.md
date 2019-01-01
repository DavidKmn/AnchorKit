
# Example Usage

```

        redView.layout { (layoutProxy) in
            layoutProxy.height.equal(toConstant: 100).priority = .required
            layoutProxy.top == view.safeTopAnchor
            layoutProxy.leading == view.safeLeadingAnchor
            layoutProxy.trailing == view.safeTrailingAnchor
        }
        
        blueView.layout {
            $0.height == view.heightAnchor * 0.2
            $0.top == redView.topAnchor
            $0.leading == redView.leadingAnchor
            $0.width == redView.widthAnchor * 0.5
        }
        
        greenView.layout {
            $0.top == redView.bottomAnchor
            $0.trailing == view.safeTrailingAnchor
            $0.leading == blueView.trailingAnchor
            $0.bottom == view.safeBottomAnchor
        }

        yellowView.layout { (layoutProxy) in
            layoutProxy.height == greenView.heightAnchor * 0.3
            layoutProxy.width == greenView.widthAnchor * 0.4
            layoutProxy.centerX == view.centerXAnchor
            layoutProxy.centerY == view.centerYAnchor
        }

```
