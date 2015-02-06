//  PresentedViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved

import UIKit

protocol PresentedViewControllerDelegate : class {
    func acceptData(data:AnyObject!)
}

class PresentedViewController: UIViewController {
    
    var data : AnyObject?
    
    weak var delegate : PresentedViewControllerDelegate?
    
    func doDismiss(sender:AnyObject?) {
 
        println(self.presentingViewController!)
        println(self.presentingViewController!.presentedViewController)
        var vc = self.delegate! as AnyObject as UIViewController
        println(vc.presentedViewController)
        
        // just proving it works
        // self.dismissViewControllerAnimated(true, completion: nil)
        // vc.dismissViewControllerAnimated(true, completion: nil)
        // return;
        
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(color: UIColor.Flat.black, size: CGSize(width: 100.0, height: 100.0)) as UIImage?
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 100, 100, 100)
        button.setImage(image, forState: .Normal)
        button.addTarget(self, action: "doDismiss:", forControlEvents:.TouchUpInside)
        self.view.addSubview(button)
        
        view.backgroundColor = UIColor.Flat.white

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // prove you've got data
        println(self.data)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if self.isBeingDismissed() {
            self.delegate?.acceptData("Even more important data!")
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.navigationController?.navigationBarHidden = true
        let navBar = UINavigationBar(frame: navRect)
        
        var navTitle = UINavigationItem(title: "Presented VC")
        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.white , size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([navTitle], animated: false)
        navBar.barTintColor = UIColor.Flat.white
        navBar.hideBottomHairline()
        self.view.addSubview(navBar)
        
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        println("new size coming: \(size)")
    }


}
