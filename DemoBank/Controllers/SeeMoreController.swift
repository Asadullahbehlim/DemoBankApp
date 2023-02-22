//
//  SeeMoreController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 23/02/23.
//
//
//import Foundation
//import UIKit
//
//class SeeMoreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//
//    private let cellId = "PayTransferCollectionViewCell"
//    private let allData: [[String: Any]]
//    private var data: [String] = []
//
//    private let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//
//    init(data: [String], allData: [[String: Any]]) {
//        self.allData = allData
//        self.data = data
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = .white
//        collectionView.layer.cornerRadius = 20
//        collectionView.register(PayTransferCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        view.addSubview(collectionView)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
//            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
//            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15)
//        ])
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PayTransferCollectionViewCell
//        cell.customImageView.setImage(UIImage(systemName: allData[2]["iconName"] as! String), for: .normal)
//        cell.customLabel.text = data[indexPath.row]
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 85, height: 85)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//}
