//
//  HomeViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//

import Foundation
import UIKit


class HomeViewController: UIViewController {
    
    let sectionTitles: [String] = ["Quick Access", "Bank", "Pay & Transfer","Loans", "Cards" ]
    
    lazy var homeFeedtable : UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        homeFeedtable.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedtable)
        homeFeedtable.delegate = self
        homeFeedtable.dataSource = self
      
        
        let headerView = HeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.height, height: 120))
        
        homeFeedtable.tableHeaderView = headerView
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        homeFeedtable.frame = view.bounds
    }
    
}
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections (in tableView: UITableView) -> Int  {
        return sectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.font = .systemFont(ofSize: 25)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100 , height: header.bounds.height)
        
        header.textLabel?.textColor = .black
    }
}
