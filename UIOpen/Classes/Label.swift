//
//  Label.swift
//  Pods-UIOpen_Tests
//
//  Created by Nguyễn Trung Kiên on 10/03/2022.
//

import UIKit

extension UILabel {
    open override func awakeFromNib() {
        super.awakeFromNib()
        isUserInteractionEnabled = true
    }
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        next?.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let position = touch.location(in: self)
            Element.logs(self, point: position, type: .touchesBegan)
        }
    }
    
    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        next?.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let position = touch.location(in: self)
            Element.logs(self, point: position, type: .touchesMoved)
        }
    }
    
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        next?.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let position = touch.location(in: self)
            Element.logs(self, point: position, type: .touchesEnded)
        }
    }
    
    open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        next?.touchesBegan(touches, with: event)
        if let touch = touches.first {
            let position = touch.location(in: self)
            Element.logs(self, point: position, type: .touchesCancelled)
        }
    }
}
