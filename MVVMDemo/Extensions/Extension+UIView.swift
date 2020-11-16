//
//  Extension+UIView.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 10/26/20.
//

import Foundation
import UIKit
extension UIView {
func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = .zero
        layer.shadowRadius = 4
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
