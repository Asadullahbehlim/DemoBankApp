//
//  HomeViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import Foundation
import UIKit


//class HomeViewController: UIViewController {
//
//    let sectionTitles: [String] = ["Quick Access", "Bank", "Pay & Transfer","Loans", "Cards" ]
//
//
//    lazy var homeFeedtable : UITableView = {
//        let table = UITableView(frame: .zero, style: .grouped)
//        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: "cellId")
//
//        return table
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        homeFeedtable.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .systemBackground
//        view.addSubview(homeFeedtable)
//        homeFeedtable.delegate = self
//        homeFeedtable.dataSource = self
//
//
//        let headerView = HeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.height, height: 120))
//
//        homeFeedtable.tableHeaderView = headerView
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        homeFeedtable.frame = view.bounds
//    }
//
//}
//extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
//    func numberOfSections (in tableView: UITableView) -> Int  {
//        return sectionTitles.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? CollectionViewTableViewCell else {
//            return UITableViewCell()
//        }
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 40
//    }
//}

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
//        let thirdViewController = TestViewController()

        let viewControllers = [quickAccessViewController, bankViewController, payTransferViewcontroller, loansViewController, cardsViewController  ]
        
        // Set up the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.addSubview(scrollView)
        
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
        stackView.distribution = .fillEqually
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(HeaderView())
        
        // Add constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        // Add some views to the stack view
        for viewController in viewControllers {
            viewController.heightAnchor.constraint(equalToConstant: 220.0).isActive = true
            stackView.addArrangedSubview(viewController)
        }
    }
}
