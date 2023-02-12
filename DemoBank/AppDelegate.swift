//
//  AppDelegate.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import UIKit

//MARK: - App Custom Colors
let appBlueColor = UIColor(red: 0/255, green: 56/255, blue: 116/255, alpha: 1)
let appRedColor = UIColor(red: 237/255, green: 28/255, blue: 36/255, alpha: 1)
let appGrayColor = UIColor(red: 234/255, green: 235/255, blue: 237/255, alpha: 1)

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
