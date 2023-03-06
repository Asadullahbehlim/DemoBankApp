//
//  HomeViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    lazy private var navBar: UINavigationBar = {
        let view = self.setNavigationBar(title: "Kotak Mahindra Bank")
        return view
    }()
    
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    // UIStackView is a view container that arranges its subviews in a horizontal or vertical stack.
    
//    private var viewControllers: [UIViewController] = []
    
    let headerView = HeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let quickAccessView = QuickAccessView()
//        let bankView = BankView()
//        let payTransferView = PayTransferView()
//        let loansView = LoansView()
//        let cardsView = CardsView()
//
//
        
        
        // Set up the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.addSubview(navBar)
        view.addSubview(scrollView)
        view.backgroundColor = appGrayColor
        
        // Add constraints for the scroll view
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalToSystemSpacingBelow: navBar.bottomAnchor, multiplier: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //    scrollView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        
        // Set up the stack view
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        // stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(headerView)
        headerView.heightAnchor.constraint(equalToConstant: 122).isActive = true
        scrollView.addSubview(stackView)
        
        
        // Add constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
        
        
        // Add some views to the stack view
        for i in 0...4 {
            
            let myView = BoxView(index: i)
            if i == 0 {
                myView.heightAnchor.constraint(equalToConstant: 150.0).isActive = true                
            }
            myView.heightAnchor.constraint(equalToConstant: 230.0).isActive = true
            stackView.addArrangedSubview(myView)
        }
    }
}



