//  TabBarController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class SubViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.navigationController?.navigationBarHidden = true
//        
//
//        // Do any additional setup after loading the view.
//    }
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        
//        self.navigationController?.navigationBarHidden = true
//        let navBar = UINavigationBar(frame: navRect)
//        
//        var navTitle = UINavigationItem(title: "")
//        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.watermelon , size: navSize), forBarMetrics: UIBarMetrics.Default)
//        navBar.setItems([navTitle], animated: false)
//        navBar.barTintColor = UIColor.Flat.white
//        navBar.hideBottomHairline()
//        self.view.addSubview(navBar)
//        
//    }
//
//    let list = more.viewControllers[0] as UIViewController
//    
//    list.title = "More"
//    let b = UIBarButtonItem()
//    b.title = "Back"
//    list.navigationItem.backBarButtonItem = b // so user can navigation back
// 
//    
//    let tv = list.view as UITableView
//    let mds = DataSource(originalDataSource: tv.dataSource!)
//    self.dataSource = mds
//    tv.dataSource = mds


//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

}
