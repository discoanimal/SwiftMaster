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
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color: UIColor.whiteColor(), size: navSize), forBarMetrics: UIBarMetrics.Default)
        self.view.backgroundColor = UIColor.Flat.mint
        self.navigationController?.navigationBar.hideBottomHairline()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
}
