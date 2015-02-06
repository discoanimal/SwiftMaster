//  CollectionViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit
import CoreImage

class CollectionViewController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var flowLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 0.0
        flowLayout.minimumInteritemSpacing = 0.0
        
        var collectionView : UICollectionView? = UICollectionView(frame: CGRectMake(0, 0, screenWidth, screenHeight), collectionViewLayout: flowLayout)
        collectionView?.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = UIColor.Flat.darkLime
        collectionView?.showsVerticalScrollIndicator = false
        
        self.view.addSubview(collectionView!)
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
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
        
//        cell.iconLabel.text = String.fontAwesomeIconWithName("fa-twittersquare")
//        cell.iconLabel.textColor = UIColor.Flat.white
        
        cell.iconLabel.text = "Fuck"
        cell.iconLabel.textColor = UIColor.Flat.green
        cell.imageView.image = UIImage(named: "beach")
        
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
        self.navigationController?.navigationBarHidden = true
        let navBar = UINavigationBar(frame: navRect)
        let navTitle = UINavigationItem(title: "")
        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.white , size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([navTitle], animated: false)
        navBar.hideBottomHairline()
        navBar.barTintColor = UIColor.Flat.white
        self.view.addSubview(navBar)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}