//
//  CollectionView.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 08/02/23.
//
//import Foundation
//import UIKit
//
//class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//    var collectionView: UICollectionView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: 80, height: 90)
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.minimumLineSpacing = 40
//
//        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//        collectionView.backgroundColor = .white
//        collectionView.delegate = self
//        collectionView.dataSource = self
//
//        view.addSubview(collectionView)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 32
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        cell.backgroundColor = .red
//        return cell
//    }
//
//
//}
