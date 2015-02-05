//  ViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor.Flat.blue
        view.backgroundColor = UIColor.Material.orange
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = true
        let navBar = UINavigationBar(frame: navRect)
        let navTitle = UINavigationItem(title: "Title")
        
        navBar.backgroundColor = UIColor.clearColor()
        navBar.setBackgroundImage(UIImage(color: UIColor.whiteColor(), size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([navTitle], animated: false)
        navBar.hideBottomHairline()
        
        self.view.addSubview(navBar)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

