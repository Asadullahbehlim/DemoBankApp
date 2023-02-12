//
//  AppDelegate.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import UIKit

let appColor: UIColor = .red
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let homeViewController = HomeViewController()
        
       homeViewController.changeStatusBarColor()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        window?.rootViewController = homeViewController
        
        return true
    }
}
