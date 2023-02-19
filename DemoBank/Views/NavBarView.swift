//
//  NavBar.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 20/02/23.
//

//import Foundation
//import UIKit
//
//class navBar: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Call the setNavigationBar function to create the navigation bar and set its title
//        let navBar = setNavigationBar(title: "Kotak Mahindra Bank")
//        view.addSubview(navBar)
//    }
//}
//
//func setNavigationBar(title: String) -> UINavigationBar {
//    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//        let statusBarHeight = windowScene.statusBarManager?.statusBarFrame.height {
//        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight, width: UIScreen.main.bounds.width, height: 44))
//        // Customize the navigation bar here
//        let navigationItem = UINavigationItem(title: title)
//        navigationBar.items = [navigationItem]
//        navigationBar.barTintColor = .white
//        return navigationBar
//    }
//    // Return a default navigation bar instance if the if condition is not satisfied
//    return UINavigationBar()
//}
//
//
