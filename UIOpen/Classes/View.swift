//
//  View.swift
//  Pods-UIOpen_Tests
//
//  Created by Nguyễn Trung Kiên on 10/03/2022.
//

import UIKit

var elementIDKey: String = ""

extension UIView {
    @IBInspectable
    @objc var elementID: String {
        get { return objc_getAssociatedObject(self, &elementIDKey) as? String ?? ""}
        set { objc_setAssociatedObject(self, &elementIDKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN) }
    }
}
