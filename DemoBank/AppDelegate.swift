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
 // let viewController = ViewController()
    let collectionViewController = CollectionViewController()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
                   window?.makeKeyAndVisible()
                   window?.backgroundColor = .systemBackground
                //  homeViewController.delegate = self
     //   window?.rootViewController = collectionViewController
        window?.rootViewController = collectionViewController
      
      return true
    }
}
