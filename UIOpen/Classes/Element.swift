//
//  Element.swift
//  Pods-UIOpen_Tests
//
//  Created by Nguyễn Trung Kiên on 10/03/2022.
//

import UIKit

class Element: UILabel {

    static let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
    
    enum Behavior {
        case touchesBegan
        case touchesMoved
        case touchesEnded
        case touchesCancelled
    }
    
    class func logs(_ object: NSObject, point: CGPoint, type: Element.Behavior) {

        var behavior = ""
        
        switch type {
        case .touchesBegan: behavior = "Chạm tay vào"
        case .touchesMoved: behavior = "Vuốt"
        case .touchesEnded: behavior = "Nhấc tay ra"
        case .touchesCancelled: behavior = "Bị huỷ"
        }
        
        let x = Int(point.x)
        let y = Int(point.y)
        
        if let object = object as? UILabel {
            print("\(behavior) => Tại [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIButton {
            print("\(behavior) => Tại [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UITextField {
            print("\(behavior) => Tại [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIImageView {
            print("\(behavior) => Tại [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIView {
            print("\(behavior) => Tại [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
    }

}
