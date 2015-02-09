//  FirstTabViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class FirstViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let subV = SubViewController()
        subV.title = "First Sub"
        self.navigationController?.pushViewController(subV, animated: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        var attributes = [ NSForegroundColorAttributeName: UIColor.Flat.darkWhite, NSFontAttributeName: UIFont(name: "Avenir", size: 18)! ]
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor.whiteColor(), size: navSize), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor = UIColor.Flat.white
        self.navigationController?.navigationBar.hideBottomHairline()
        self.tabBarController?.tabBar.shadowImage = UIImage(color: UIColor.whiteColor(), size: CGSize(width: 60.0, height: 5.0))
        self.tabBarController?.tabBar.backgroundImage = UIImage(color: UIColor.whiteColor(), size: CGSize(width: screenWidth, height: 2.0))
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        self.navigationController?.tabBarController?.tabBar.translucent = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
}
