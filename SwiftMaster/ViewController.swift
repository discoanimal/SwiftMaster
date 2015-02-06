//  ViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.Material.orange
        self.navigationController?.navigationBarHidden = true
        
        // Font Awesome Icon Font
        let label = UILabel(frame: CGRect(x: 0 ,y: 0, width: screenWidth , height: screenHeight / 4 ))
        label.font = UIFont.fontAwesomeOfSize(150)
        label.textColor = UIColor.whiteColor()
        label.text = String.fontAwesomeIconWithName("fa-github")
        label.center = CGPoint(x: screenWidth / 2 , y: screenHeight / 3)
        label.textAlignment = .Center
        self.view.addSubview(label)
        
        // Google Icon Font
        let gLabel = UILabel(frame: CGRect(x: 0 ,y: 0, width: screenWidth , height: screenHeight / 4 ))
        gLabel.font = UIFont(name: GoogleIconName, size: 100.0)
        gLabel.textColor = UIColor.Flat.watermelon
        gLabel.text = GoogleIcon.e600
        gLabel.center = CGPoint(x: screenWidth / 2 , y: screenHeight / 4 * 3)
        gLabel.textAlignment = .Center
        self.view.addSubview(gLabel)
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        var attributes = [ NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont(name: "Avenir", size: 20)! ]
        let navBar = UINavigationBar(frame: navRect)
        var navTitle = UINavigationItem(title: "Welcome")
        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.purple , size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([ navTitle], animated: false)
        navBar.hideBottomHairline()
        navBar.titleTextAttributes = attributes
        self.view.addSubview(navBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

