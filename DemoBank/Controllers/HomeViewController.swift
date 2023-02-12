//
//  HomeViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {

    private let scrollView = UIScrollView()
    private let stackView = UIStackView()

    private var viewControllers: [UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        let quickAccessViewController = QuickAccessViewController()
        let bankViewController = BankViewController()
        let payTransferViewcontroller = PayTransferViewController()
        let loansViewController = LoansViewController()
        let cardsViewController = CardsViewController()
        let headerView = HeaderView()
//        let thirdViewController = TestViewController()

        let viewControllers = [quickAccessViewController, bankViewController, payTransferViewcontroller, loansViewController, cardsViewController  ]
        
        // Set up the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.addSubview(scrollView)
        view.backgroundColor = appGrayColor
        
        // Add constraints for the scroll view
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //    scrollView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])


        // Set up the stack view
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
       // scrollView.isScrollEnabled = true
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(headerView)
        headerView.heightAnchor.constraint(equalToConstant: 250).isActive = true
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
        for viewController in viewControllers {
            viewController.heightAnchor.constraint(equalToConstant: 230.0).isActive = true
            stackView.addArrangedSubview(viewController)
        }
    }
}
