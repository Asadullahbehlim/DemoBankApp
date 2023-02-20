//
//  LoansViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 12/02/23.
//

import Foundation
import UIKit

class LoansViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let iconLabelArray = ["Free Credit Score", "Loan & Card Offers", "Personal Loan", "Home Loan", "Pay Day Loan\n", "Consumer Durable Loan", "Pay Overdue EMI", "See more\n"]
   
    let iconNameArray = ["speedometer", "hand.draw", "folder.fill.badge.person.crop", "house.circle.fill", "indianrupeesign.circle.fill", "laptopcomputer.and.iphone", "creditcard.trianglebadge.exclamationmark", "chevron.right.circle.fill"]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        return cv
    }()
    
    let cellId = "LoansCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.layer.cornerRadius = 20
        collectionView.register(LoansCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(LoansTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "LoansTitleViewCell")

        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LoansCollectionViewCell
        
        cell.customImageView.setImage(UIImage(systemName: iconNameArray[indexPath.row]), for: .normal)
        // And in the cellForItemAt method:
        cell.customImageView.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        cell.customImageView.tag = indexPath.row
        
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
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "LoansTitleViewCell", for: indexPath) as! LoansTitleViewCell
            header.titleLabel.text = "Loans"
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }

    @objc func buttonTapped(_ sender: UIButton) {
        let buttonName = iconLabelArray[sender.tag]
        print(buttonName)
    }
}

