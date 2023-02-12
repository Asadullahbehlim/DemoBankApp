//
//  PayTransferViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 12/02/23.
//


import Foundation
import UIKit

class PayTransferViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let iconLabelArray = ["Transfer Money", "Bill Pay & Recharge", "BHIM UPI", "Scan Any QR", "One Time Transfer\n", "Pay Your contact", "Add/Manage Beneficiary", "See more\n"]
   
    let iconNameArray = ["rectangle.portrait.and.arrow.right", "b.circle.fill", "arrow.right.square", "qrcode.viewfinder", "1.circle", "rectangle.portrait.and.arrow.right", "person.fill.badge.plus", "chevron.right.circle.fill"]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        return cv
    }()
    
    let cellId = "BankCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(BankHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BankHeaderTitleViewCell")

        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        //        cell.backgroundColor = .red
        //        cell.layer.cornerRadius = 15
        //        return cell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCollectionViewCell", for: indexPath) as! BankCollectionViewCell
        
        cell.customImageView.image = UIImage(systemName: iconNameArray[indexPath.row])
        
        cell.customLabel.text = iconLabelArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 85, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BankHeaderTitleViewCell", for: indexPath) as! BankHeaderTitleViewCell
            header.titleLabel.text = "Pay & Transfer"
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }


}