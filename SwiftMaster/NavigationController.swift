//  NavigationController.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved

import UIKit

class NavigationController : UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }


}
