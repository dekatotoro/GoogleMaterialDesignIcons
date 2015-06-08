//
//  ViewController.swift
//  GoogleMaterialDesignIcons
//
//  Created by 波戸 勇二 on 12/8/14.
//  Copyright (c) 2014 Yuji Hato. All rights reserved.
//

import UIKit

class IconViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    var displayeds = [Bool](count:GoogleIcon.icons().count, repeatedValue:false)
    

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GoogleIcon.icons().count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(IconCollectionViewCell.Identifier, forIndexPath: indexPath) as! IconCollectionViewCell
        GoogleIcon.e600
        let row = indexPath.row
        let data = (GoogleIcon.icons()[row], displayeds[row])
        cell.setData(data)
        displayeds[row] = true
        return cell
    }
    
}

