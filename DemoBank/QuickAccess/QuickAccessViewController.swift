//
//  QuickAccessViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 11/02/23.
//
import Foundation
import UIKit

class QuickAccessView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
  
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        // UICollectionViewFlowLayout is a concrete class of UICollectionViewLayout that has all its four members implemented, in the way that the cells will be arranged in a grid manner.
        
        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
        
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        return cv
    }()
    
    let cellId = "QuickAccessCollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = appGrayColor
        collectionView.register(QuickAccessCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(QuickAccessHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "QuickAccessHeaderTitleViewCell")
        
        
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
        return allData[0].data.label.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        //        cell.backgroundColor = .red
        //        cell.layer.cornerRadius = 15
        //        return cell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! QuickAccessCollectionViewCell
        
        cell.customImageView.setImage(UIImage(systemName: allData[0].data.iconName[indexPath.row]), for: .normal)
        // And in the cellForItemAt method:
        cell.customImageView.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        cell.customImageView.tag = indexPath.row
        
        cell.customLabel.text = allData[0].data.label[indexPath.row]
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 85, height: 85)
    }
    
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    //        return 0
    //    }
    //
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    //        return 0
    //    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "QuickAccessHeaderTitleViewCell", for: indexPath) as! QuickAccessHeaderTitleViewCell
            header.titleLabel.text = allData[0].title
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 40)
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        let buttonName = allData[0].data.label[sender.tag]

        print("\(buttonName) Tapped")
    }
    
}


//
//    let iconDict : [String: Any] = ["Pay your Contact" : "iphone.homebutton", "Loan and Card offers" : "banknote", "Account overview" : "indianrupeesign.circle", "Scan any \n QR" : "qrcode.viewfinder"  ]
//
