//
//  HomeViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import Foundation
import UIKit

//class HomeViewController: UIViewController {
    
    
//    func setStatusBar() {
//        let statusBarSize = UIApplication.shared.statusBarFrame.size
//
//        let frame = CGRect(origin: .zero, size: statusBarSize)
//        let statusbarView = UIView(frame: frame)
//
//        statusbarView.backgroundColor = .red
//        view.addSubview(statusbarView)
//    }
//
//
//    let accountLabel: UILabel = {
//        let label = UILabel()
//        label.text = "View Balance"
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textAlignment = .left
//        return label
//    }()
//
//    let balanceLabel: UILabel = {
//        let label = UILabel()
//        label.text = "$0.00"
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textAlignment = .center
//        return label
//    }()
//
//    let quickAccessButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Quick Access", for: .normal)
//        button.addTarget(HomeViewController.self, action: #selector(quickAccessTapped), for: .touchUpInside)
//        return button
//    }()
//
//    let cardsBoxButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Cards Box", for: .normal)
//        button.addTarget(HomeViewController.self, action: #selector(cardsBoxTapped), for: .touchUpInside)
//        return button
//    }()
//
//    let payAndTransferButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Pay and Transfer", for: .normal)
//        button.addTarget(HomeViewController.self, action: #selector(payAndTransferTapped), for: .touchUpInside)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .white
////        view.addSubview(stack)
//        setupLayout()
//    }
//
//    var stack: HeaderView = {
//       let headerView = HeaderView()
//        headerView.frame = CGRect(x: 100, y: 100, width: UIScreen.main.bounds.height, height: 200)
//        return headerView
//    }()
//
//    private func setupLayout() {
//        let balanceStackView = UIStackView(arrangedSubviews: [accountLabel, balanceLabel])
//        balanceStackView.axis = .vertical
//        balanceStackView.spacing = 10
//        balanceStackView.translatesAutoresizingMaskIntoConstraints = false
//
//        let mainStackView = UIStackView(arrangedSubviews: [balanceStackView, quickAccessButton, cardsBoxButton, payAndTransferButton, stack])
//        mainStackView.axis = .vertical
//        mainStackView.spacing = 20
//
//        view.addSubview(mainStackView)
//        mainStackView.translatesAutoresizingMaskIntoConstraints = false
//        mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//
//        mainStackView.translatesAutoresizingMaskIntoConstraints = false
//        let constraints = [stack.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
//                           stack.topAnchor.constraint(equalTo: mainStackView.topAnchor,constant: 50)]
//        NSLayoutConstraint.activate(constraints)
//
//
//   }
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//            guard let header = view as? UITableViewHeaderFooterView else {return}
//            header.textLabel?.font = .systemFont(ofSize: 25)
//            header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100 , height: header.bounds.height)
//
//            header.textLabel?.textColor = .black
//        }
//
//    @objc private func quickAccessTapped() {
//        print("Quick Access Tapped")
//    }
//
//    @objc private func cardsBoxTapped() {
//        print("Cards Box Tapped")
//    }
//
//    @objc private func payAndTransferTapped() {
//        print("Pay and Transfer Tapped")
//    }
//
//
