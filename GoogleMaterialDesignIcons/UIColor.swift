//
//  ViewController.swift
//  GoogleMaterialDesignIcons
//
//  Created by 波戸 勇二 on 12/8/14.
//  Copyright (c) 2014 Yuji Hato. All rights reserved.
//
import UIKit

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat((hex & 0xFF)) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    struct ColorPalette {
        static let xECEFF1 = UIColor(hex: 0xECEFF1)
    }
    
}