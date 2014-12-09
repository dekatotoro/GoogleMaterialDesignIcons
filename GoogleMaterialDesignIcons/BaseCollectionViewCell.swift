//
//  BaseTableViewCell.swift
//  GoogleMaterialDesignIcons
//
//  Created by 波戸 勇二 on 12/9/14.
//  Copyright (c) 2014 Yuji Hato. All rights reserved.
//

import UIKit

class BaseCollectionViewCell : UICollectionViewCell {
    
    class var Identifier: String { return NSStringFromClass(self).componentsSeparatedByString(".").last! }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAwakeFromNib()
    }
    
    func setup() {
        
    }
    
    func setupAwakeFromNib() {
        setDefaultSelectedBackgroundView()
    }
    
    func setData(data: Any) {
        
    }
    
    private func setDefaultSelectedBackgroundView() {
        self.selectedBackgroundView = UIView(frame: self.bounds)
        self.selectedBackgroundView.backgroundColor = UIColor.ColorPalette.xECEFF1
    }
}