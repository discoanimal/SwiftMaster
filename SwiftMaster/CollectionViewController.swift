//  CollectionViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit
import CoreImage

class CollectionViewController : UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var flowLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 0.0
//        flowLayout.minimumLineSpacing = 0.0
        
        var collectionView : UICollectionView? = UICollectionView(frame: CGRectMake(0, 0, screenWidth, screenHeight), collectionViewLayout: flowLayout)
        
        collectionView?.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = UIColor.Flat.white
        
        self.view.addSubview(collectionView!)

        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {

        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as CollectionViewCell
        cell.textLabel.text = "Text"
        cell.textLabel.textColor = UIColor.Flat.white
        cell.imageView.image = UIImage(named: "beach")
        
        return cell
        
//        let cellID = "Cell"
//        var cell : Cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellID, forIndexPath: indexPath) as Cell
//        
//        let item: CellItem = items[indexPath.section][indexPath.item]
//        cell.textLabel.text = item.text
//        if (indexPath.section == items.count-1) {
//            cell.imageView.imageFromURL("https://c2.staticflickr.com/4/3212/3130969018_ed7516c288_n.jpg", placeholder: item.image, fadeIn: true) {
//                (image: UIImage?) in
//                if image != nil {
//                    cell.imageView.image = image!
//                }
//            }
//        } else {
//            cell.imageView.image = item.image
//        }
//        
//        return cell


    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake(screenWidth / 2 , screenWidth / 2)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0); //top,left,bottom,right
    }
    
//    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
//        if kind == UICollectionElementKindSectionHeader {
//            println("sectionHeader")
//            var headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "collectionHeaderView", forIndexPath: indexPath) as CollectionHeaderView
//            
//            return headerView
//        }
//        else {
//            assert(false, "Unsupported supplementary view kind")
//            return UICollectionReusableView()
//        }
//    }

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
        let navBar = UINavigationBar(frame: navRect)
        let navTitle = UINavigationItem(title: "Title")
        
        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.watermelon , size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([navTitle], animated: false)
        navBar.hideBottomHairline()
        
        self.view.addSubview(navBar)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}