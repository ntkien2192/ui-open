//
//  UIOpen.swift
//  Pods-UIOpen_Tests
//
//  Created by Nguyễn Trung Kiên on 10/03/2022.
//

import UIKit

class UIOpen: NSObject {
    static let shared = UIOpen()
    
    var window: UIWindow?
    var appID: String?
    var secretKey: String?
    
    override init() {
        super.init()
    }
    
    func config(appID: String, secretKey: String) {
        self.appID = appID
        self.secretKey = secretKey
    }
    
    func startFollow(window: UIWindow? = nil) {
        if let window = window {
            self.window = window
        } else {
            self.window = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        }
    }
    
    class func logs(_ object: NSObject, point: CGPoint, type: Element.Behavior) {

        var behavior = ""
        
        switch type {
        case .touchesBegan: behavior = "Start Touch"
        case .touchesMoved: behavior = "Start Scroll"
        case .touchesEnded: behavior = "End Touch"
        case .touchesCancelled: behavior = "Touch Cancelled"
        }
        
        let x = Int(point.x)
        let y = Int(point.y)
        
        if let object = object as? UILabel {
            print("\(behavior) => At [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIButton {
            print("\(behavior) => At [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UITextField {
            print("\(behavior) => At [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIImageView {
            print("\(behavior) => At [\(x)|\(y)] => \(object.elementID)")
            return
        }
        
        if let object = object as? UIView {
            print("\(behavior) => At [\(x)|\(y)] => \(object.elementID)")
            return
        }
    }
}
