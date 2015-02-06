//  AppDelegate.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    var mainNavigationController : UINavigationController?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        if let window = window {
            window.backgroundColor = UIColor.Flat.green
            self.mainNavigationController = UINavigationController()
            let mainViewController = CollectionViewController()
            self.mainNavigationController?.pushViewController(mainViewController, animated: true)
            window.rootViewController = mainNavigationController
            window.makeKeyAndVisible()
        }
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
     
    }

    func applicationDidEnterBackground(application: UIApplication) {
       
    }

    func applicationWillEnterForeground(application: UIApplication) {
        
    }

    func applicationDidBecomeActive(application: UIApplication) {
    
    }

    func applicationWillTerminate(application: UIApplication) {
      
    }


}

