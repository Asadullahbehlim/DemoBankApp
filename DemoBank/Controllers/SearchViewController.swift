//
//  SearchViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 27/02/23.
//
////
//import Foundation
//import UIKit
//
//class SearchViewController: UIViewController {
//    let searchTable : UITableView = {
//        let table = UITableView()
//        table.register(LoansTitleViewCell.self, forCellReuseIdentifier: LoansTitleViewCell())
//        return searchTable
//    } ()
//
//    let searchController: UISearchController = {
//        let controller = UISearchController(searchResultsController: SearchResultsViewController())
//        controller.searchBar.placeholder = "Search Any Banking Service"
//        controller.searchBar.searchBarStyle = .minimal
//        return controller
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "Search"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationItem.largeTitleDisplayMode = .always
//
//        view.backgroundColor = .systemBackground
//
//        view.addSubview(searchTable)
//        searchTable.delegate = self
//        searchTable.dataSource = self
//        navigationItem.searchController = searchController
//
//        navigationController?.navigationBar.tintColor = .white
//        fetchSearchServices()
//
//        searchController.searchResultsUpdater = self
//    }
