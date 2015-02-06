//  AppDelegate.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    var mainNavigationController : UINavigationController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        
        // TAB
        let firstV : UIViewController = FirstViewController()
        let secondV : UIViewController = SecondViewController()
        let thirdV : UIViewController = ThirdViewController()
        let forthV : UIViewController = ForthViewController()
        let fifthV : UIViewController = FifthViewController()
        
        firstV.title = "First"
        secondV.title = "Second"
        thirdV.title = "Third"
        forthV.title = "Forth"
        fifthV.title = "Fifth"
        
        let naviV1 : UINavigationController = UINavigationController(rootViewController: firstV)!
        let naviV2 : UINavigationController = UINavigationController(rootViewController: secondV)!
        let naviV3 : UINavigationController = UINavigationController(rootViewController: thirdV)!
        let naviV4 : UINavigationController = UINavigationController(rootViewController: forthV)!
        let naviV5 : UINavigationController = UINavigationController(rootViewController: fifthV)!
        
        let tabbarCon : UITabBarController = UITabBarController()
        let arrV : NSArray = NSArray(objects: naviV1,naviV2,naviV3,naviV4,naviV5)
        tabbarCon.setViewControllers(arrV, animated: true)
        
        var item1 : UITabBarItem = tabbarCon.tabBar.items?[0] as UITabBarItem
        var item2 : UITabBarItem = tabbarCon.tabBar.items?[1] as UITabBarItem
        var item3 : UITabBarItem = tabbarCon.tabBar.items?[2] as UITabBarItem
        var item4 : UITabBarItem = tabbarCon.tabBar.items?[3] as UITabBarItem
        var item5 : UITabBarItem = tabbarCon.tabBar.items?[4] as UITabBarItem
        
        let img : UIImage = UIImage(named: "list_blue_tab")!
        let color : UIImage = UIImage(color: UIColor.Flat.pink)!
        var text : String = "\u{e601}"
        
        item1.image = img
        item2.image = color
        item3.image = img
        item4.image = img
        item5.image = img
        
        UINavigationBar.appearance().barTintColor = UIColor.yellowColor()
        let font:UIFont! = UIFont(name:"HelveticaNeue-Bold",size:10)
        let selectedAttributes:NSDictionary! = [NSFontAttributeName:font,NSForegroundColorAttributeName:UIColor.redColor()]
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, forState: UIControlState.Selected)
        
        if let window = window {
             window.backgroundColor = UIColor.Flat.white
             window.rootViewController = tabbarCon
             window.makeKeyAndVisible()
        }
        
        return true
        // TAB
        

//      let viewController = PresentingViewController()
//      //  let viewController = CollectionViewController()
//      //  let viewController = ViewController()
//        
//        if let window = window {
//            mainNavigationController = UINavigationController()
//            mainNavigationController!.pushViewController(viewController, animated: true)
//            
//            self.window!.backgroundColor = UIColor.Flat.white
//            self.window!.rootViewController = mainNavigationController
//            self.window!.makeKeyAndVisible()
//        }
//        return true
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

