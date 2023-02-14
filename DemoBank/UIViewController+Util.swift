//
//  UIViewController+Util.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 10/02/23.
//

import Foundation
import UIKit

//MARK: - Status Bar & Navigation Bar Customization.
extension UIViewController {
    //MARK: - Status Bar & Navigation Bar Customization.
        
        func changeStatusBarColor() {
            if #available(iOS 13.0, *) {
                let app = UIApplication.shared
               let statusBarHeight: CGFloat = app.statusBarFrame.size.height
                
//            let statusBarHeight = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0

                let statusbarView = UIView()
                
                statusbarView.backgroundColor = appRedColor
                view.addSubview(statusbarView)
              
                statusbarView.translatesAutoresizingMaskIntoConstraints = false
                statusbarView.heightAnchor
                    .constraint(equalToConstant: statusBarHeight).isActive = true
                statusbarView.widthAnchor
                    .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
                statusbarView.topAnchor
                    .constraint(equalTo: view.topAnchor).isActive = true
                statusbarView.centerXAnchor
                    .constraint(equalTo: view.centerXAnchor).isActive = true
              
            } else {
                let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
                statusBar?.backgroundColor = appRedColor
            }
        }
}
    
    
    
    
    
    
    
    
//        func setNavigationBar() -> UINavigationBar {
//
//
//            let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: UIApplication.shared.statusBarFrame.size.height, width: view.frame.size.width, height:50))
//            let navigationItem = UINavigationItem()
//            navigationItem.title = "Add/Manage Beneficiary"
//
//            navigationBar.tintColor = .white
//            let navBarAppearance = UINavigationBarAppearance()
//            navBarAppearance.configureWithTransparentBackground() // to hide Navigation Bar Line also
//            navBarAppearance.backgroundColor = appRedColor
//            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//            UINavigationBar.appearance().standardAppearance = navBarAppearance
//            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//
//            let chevronButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left") , style: .plain, target: nil, action: nil)
//            navigationItem.leftBarButtonItem = chevronButton
//            navigationBar.items = [navigationItem]
//
//            return navigationBar
//        }


