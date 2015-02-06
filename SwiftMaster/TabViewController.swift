//  FirstTabViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class TabViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        println("just styled the nav")
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor.Flat.blue , size: navSize), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor = UIColor.Flat.white
        self.navigationController?.navigationBar.hideBottomHairline()

       
        
        
//        self.navigationController?.navigationBarHidden = true
//        let navBar = UINavigationBar(frame: navRect)
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor.Flat.watermelon , size: navSize), forBarMetrics: UIBarMetrics.Default)
//        self.navigationController?.navigationBar.barTintColor = UIColor.Flat.white
//        self.navigationController?.navigationBar.hideBottomHairline()
        
    }


   
}
