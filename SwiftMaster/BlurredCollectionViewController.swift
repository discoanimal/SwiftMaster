//
//  BlurredCollectionViewController.swift


import UIKit

class BlurredCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myself = UIImageView(frame: self.view.frame)
        myself.image = UIImage(named: "skyiPhone.jpg")
        myself.contentMode = UIViewContentMode.ScaleAspectFill
        self.collectionView!.backgroundView = myself
        
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("blurCell", forIndexPath: indexPath) as BlurredCollectionViewCell
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}