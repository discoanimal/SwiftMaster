//  TabCollectionViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit
import CoreImage

class TabCollectionViewController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var flowLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 0.0
        flowLayout.minimumInteritemSpacing = 0.0
        
        var collectionView : UICollectionView? = UICollectionView(frame: CGRectMake(0, 0, screenWidth, screenHeight), collectionViewLayout: flowLayout)
        collectionView?.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView?.registerClass(BlurCollectionViewCell.self, forCellWithReuseIdentifier: "blurCell")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = UIColor.whiteColor()
        collectionView?.showsVerticalScrollIndicator = false
        
        self.view.addSubview(collectionView!)
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as CollectionViewCell
        cell.textLabel.text = "Text"
        cell.textLabel.textColor = UIColor.Flat.white
        
        if indexPath.row % 3 == 0 {
            // Font Awesome
            cell.iconLabel.font = iconFont
            cell.iconLabel.text = "\u{f0b1}"
            cell.iconLabel.textColor = UIColor.Flat.white
            cell.imageView.image = UIImage(color: UIColor.Flat.purple, size: CGSize(width: cell.frame.width, height: cell.frame.height))
        } else {
            //  Google Icons
            cell.iconLabel.font = gFont
            cell.iconLabel.text = GoogleIcon.e606
            cell.iconLabel.textColor = UIColor.Flat.white
            cell.imageView.image = UIImage(named: "beach")
            
        }
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(screenWidth / 2 , screenWidth / 2 )
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0); //top,left,bottom,right
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.navigationBarHidden = true
//        let navBar = UINavigationBar(frame: navRect)
//        let navTitle = UINavigationItem(title: "")
//        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.white , size: navSize), forBarMetrics: UIBarMetrics.Default)
//        navBar.setItems([navTitle], animated: false)
//        navBar.hideBottomHairline()
//        navBar.barTintColor = UIColor.Flat.white
//        self.view.addSubview(navBar)
        
        var attributes = [ NSForegroundColorAttributeName: UIColor.Flat.darkWhite, NSFontAttributeName: UIFont(name: "Avenir", size: 18)! ]
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor.whiteColor(), size: navSize), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor = UIColor.Flat.white
        self.navigationController?.navigationBar.hideBottomHairline()
        self.tabBarController?.tabBar.shadowImage = UIImage(color: UIColor.whiteColor(), size: CGSize(width: 60.0, height: 5.0))
        self.tabBarController?.tabBar.backgroundImage = UIImage(color: UIColor.whiteColor(), size: CGSize(width: screenWidth, height: 2.0))
        self.navigationController?.navigationBar.titleTextAttributes = attributes


        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let subV = SubViewController()
        subV.title = String(indexPath.item)
        self.navigationController?.pushViewController(subV, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}