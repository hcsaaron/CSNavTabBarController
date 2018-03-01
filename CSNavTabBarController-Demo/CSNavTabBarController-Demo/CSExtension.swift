//
//  CSExtension.swift
//  CSNavTabBarController-Demo
//
//  Created by iMacHCS on 15/11/11.
//  Copyright © 2015年 CS. All rights reserved.
//

import UIKit

extension NSString {
    func textSizeWithFont(_ font: UIFont) -> CGSize {
        let attributes = [NSFontAttributeName: font]
        let options = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect = self.boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude), options: options, attributes: attributes, context: nil)
        return rect.size
    }
}
extension UIView {
    var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.height
        }
        set {
            self.frame.origin.y = newValue - self.frame.height
        }
    }
    var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.width
        }
        set {
            self.frame.origin.x = newValue - self.frame.width
        }
    }
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center.x = newValue
        }
    }
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center.y = newValue
        }
    }
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
}
