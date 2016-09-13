//
//  IconCollectionViewCell.swift
//  GoogleMaterialDesignIcons
//
//  Created by 波戸 勇二 on 12/9/14.
//  Copyright (c) 2014 Yuji Hato. All rights reserved.
//

import UIKit


class IconCollectionViewCell : BaseCollectionViewCell {
    

    class var Size: CGSize { return CGSize.zero }
    
    @IBOutlet weak var iconLabel: UILabel!
    
    override func setData(_ data: Any) {
        if let iconData = data as? (String, Bool) {
            self.iconLabel.text = iconData.0
            self.iconLabel.textColor = self.getRandomColor()
            if !iconData.1 {
                self.iconLabel.alpha = 0.2
                UIView.animate(withDuration: 0.6, animations: { () -> Void in
                    self.iconLabel.alpha = 1.0
                })
            }
        }
    }
    
    fileprivate func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}
