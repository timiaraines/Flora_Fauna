//
//  UIView+Extension.swift
//  Flora_Fauna
//
//  Created by Timia Raines on 10/26/22.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
