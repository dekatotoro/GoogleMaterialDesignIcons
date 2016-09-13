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
    
    var displayeds = [Bool](repeating: false, count: GoogleIcon.icons().count)
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GoogleIcon.icons().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IconCollectionViewCell.Identifier, for: indexPath) as! IconCollectionViewCell
        let row = (indexPath as NSIndexPath).row
        let data: Any = (GoogleIcon.icons()[row], displayeds[row])
        cell.setData(data)
        displayeds[row] = true
        return cell
    }
    
}

