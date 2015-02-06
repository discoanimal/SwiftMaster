//  AppDelegate.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    var mainNavigationController : UINavigationController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
//    let viewController = CollectionViewController()
      let viewController = PresentingViewController()
//      let viewController = ViewController()
        
        if let window = window {
            mainNavigationController = UINavigationController()
            mainNavigationController!.pushViewController(viewController, animated: true)
            
            self.window!.backgroundColor = UIColor.Flat.white
            self.window!.rootViewController = mainNavigationController
            self.window!.makeKeyAndVisible()
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

