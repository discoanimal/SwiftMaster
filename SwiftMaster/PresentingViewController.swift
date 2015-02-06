//  PresentingViewController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved.

import UIKit

class PresentingViewController: UIViewController, PresentedViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(color: UIColor.Flat.purple, size: CGSize(width: 100.0, height: 100.0)) as UIImage?
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 100, 100, 100)
        button.setImage(image, forState: .Normal)
        button.addTarget(self, action: "doPresent:", forControlEvents:.TouchUpInside)
        self.view.addSubview(button)
        
        view.backgroundColor = UIColor.Flat.white

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func doPresent(sender:AnyObject?) {
        
        // logging to prove these are normally nil
        println(self.presentingViewController)
        println(self.presentedViewController)
        
        let svc = PresentedViewController()
        svc.data = "This is very important data!"
        svc.delegate = self
        
        let which = 2
        switch which {
        case 1: break // showing that .CoverVertical is the default
        case 2: svc.modalTransitionStyle = .CoverVertical
        case 3: svc.modalTransitionStyle = .CrossDissolve
        case 4: svc.modalTransitionStyle = .PartialCurl
            // partial curl is not partial in iOS 8; bug?
            // thus, the "click to dismiss" feature makes no sense
            // user taps background and presented vc just dismisses? weird; bug?
        case 5:
            svc.modalTransitionStyle = .FlipHorizontal
            self.view.window!.backgroundColor = UIColor.greenColor() // prove window shows thru
            // no transition on present, only on dismiss; bug? - ok, fixed
        default: break
        }
        
        println(self.traitCollection)
        
        let which2 = 3
        switch which2 {
        case 1: break // showing that .FullScreen is the default
        case 2: svc.modalPresentationStyle = .FullScreen
        case 3: svc.modalPresentationStyle = .PageSheet
        case 4: svc.modalPresentationStyle = .FormSheet
        case 5:
            svc.modalPresentationStyle = .OverFullScreen
            svc.view.alpha = 0.5 // just to prove that it's working
        default: break
        }
        
        self.presentViewController(svc, animated:true, completion:nil)
        // self.showViewController(svc, sender:self) // ooops! we're in a nav interface, uses that :)
    }
    
    func acceptData(data:AnyObject!) {
        // do something with data here
        
        // prove that you received data
        println(data)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.navigationController?.navigationBarHidden = true
        let navBar = UINavigationBar(frame: navRect)
        
        var navTitle = UINavigationItem(title: "Presenting VC")
        navBar.setBackgroundImage(UIImage(color: UIColor.Flat.watermelon , size: navSize), forBarMetrics: UIBarMetrics.Default)
        navBar.setItems([navTitle], animated: false)
        navBar.barTintColor = UIColor.Flat.white
        navBar.hideBottomHairline()
        self.view.addSubview(navBar)
        
    }

    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("vc did disappear")
    }
    
    override func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)!) {
        println("here") // prove that this is called by clicking on curl
        super.dismissViewControllerAnimated(flag, completion: completion)
    }



}
