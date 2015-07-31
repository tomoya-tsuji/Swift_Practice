//
//  ViewController.swift
//  swiftCollectionViewTest
//
//  Created by TsujiTomoya on 2015/07/25.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    //コレクションビューに表示するsectionの数を返す処理
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    //sectionに表示するItemの数を返す処理
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1;
    }
    
    //セルの表示内容をセットする
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        as! UICollectionViewCell
        
        let image = UIImage(named: "mario")
        let imageView = UIImageView(image: image) as UIImageView
        let radian = CGFloat(M_PI / 180)* CGFloat(30* indexPath.row)
        imageView.transform = CGAffineTransformMakeRotation(radian)
        cell.addSubview(imageView)
        return cell
    }
    
    //sectionのヘッダーを表示するためのメソッド
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        if kind! = UICollectionElementKindSectionHeader{
            return super.collectionView(collectionView, viewForSupplementaryElementOfKind: kind, atIndexPath: indexPath)
        }
        
        
    }
    
    

}

