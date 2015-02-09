//  AppDelegate.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    var mainNavigationController : UINavigationController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // TAB VIEW
        let firstV : UIViewController = TabCollectionViewController()
        let secondV : UIViewController = SecondViewController()
        let thirdV : UIViewController = PresentingViewController()
        let forthV : UIViewController = ForthViewController()
        let fifthV : UIViewController = FifthViewController()
        
        firstV.title = "Home"
        secondV.title = "Users"
        thirdV.title = ""
        forthV.title = "Messages"
        fifthV.title = "Profile"
        
        let naviV1 : UINavigationController = UINavigationController(rootViewController: firstV)
        let naviV2 : UINavigationController = UINavigationController(rootViewController: secondV)
        let naviV3 : UINavigationController = UINavigationController(rootViewController: thirdV)
        let naviV4 : UINavigationController = UINavigationController(rootViewController: forthV)
        let naviV5 : UINavigationController = UINavigationController(rootViewController: fifthV)
        
        let tabbarCon : UITabBarController = UITabBarController()
        let tabBar = UITabBar(frame: CGRect(origin: CGPoint(x: 0,y: 0), size: CGSize(width: screenWidth, height: 60)))
        let arrV : NSArray = NSArray(objects: naviV1,naviV2,naviV3,naviV4,naviV5)
        tabbarCon.tabBar.translucent = false
        tabbarCon.setViewControllers(arrV, animated: true)
        
        var item1 : UITabBarItem = tabbarCon.tabBar.items?[0] as UITabBarItem
        var item2 : UITabBarItem = tabbarCon.tabBar.items?[1] as UITabBarItem
        var item3 : UITabBarItem = tabbarCon.tabBar.items?[2] as UITabBarItem
        var item4 : UITabBarItem = tabbarCon.tabBar.items?[3] as UITabBarItem
        var item5 : UITabBarItem = tabbarCon.tabBar.items?[4] as UITabBarItem
        
        let home : UIImage = UIImage(named: "tab_home")!
        let users : UIImage = UIImage(named: "tab_users")!
        let post : UIImage = UIImage(named: "tab_post")!
        let messages : UIImage = UIImage(named: "tab_messages")!
        let profile : UIImage = UIImage(named: "tab_profile")!
        
        item1.image = home
        item2.image = users
        item3.image = post
        item4.image = messages
        item5.image = profile
        
        let font:UIFont! = UIFont(name:"HelveticaNeue-Bold",size:10)
        let selectedAttributes:NSDictionary! = [NSFontAttributeName:font,NSForegroundColorAttributeName:UIColor.whiteColor(), NSBackgroundColorAttributeName:UIColor.whiteColor()]
        UITabBar.appearance().shadowImage? = UIImage(color: UIColor.whiteColor(), size: CGSize(width: screenWidth, height: 60.0))!
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, forState: UIControlState.Selected)
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, forState: UIControlState.Normal)
        
        UITabBar.appearance().selectedImageTintColor = UIColor.Material.green
        
        
        if let window = window {
             window.tintColor = UIColor.Flat.red
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

