//
//  ViewController.swift
//  NY Times
//
//  Created by sourav on 12/03/19.
//  Copyright © 2019 sourav. All rights reserved.
//

import UIKit
@IBDesignable
extension UIView {
    
    @IBInspectable
    var cornerRadiusExt: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidthExt: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColorExt: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadiusExt: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.6
            layer.shadowRadius = shadowRadiusExt
        }
    }
    
    public var className: String {
        return String(describing: self)
    }
    

 
}






 
