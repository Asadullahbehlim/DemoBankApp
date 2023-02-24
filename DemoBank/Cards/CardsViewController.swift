//
//  CardsViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 12/02/23.
//


import Foundation
import UIKit

class CardsView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
     //   UICollectionViewFlowLayout is a class in UIKit that provides a layout for a UICollectionView object
        
        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        return cv
    }()
    
    let cellId = "CardsCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.layer.cornerRadius = 20
        collectionView.register(CardsCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(CardsTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "CardsTitleViewCell")

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
        return allData[4].data.label.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        //        cell.backgroundColor = .red
        //        cell.layer.cornerRadius = 15
        //        return cell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CardsCollectionViewCell
        
        cell.customImageView.setImage(UIImage(systemName: allData[4].data.iconName[indexPath.row]), for: .normal)
        // And in the cellForItemAt method:
        cell.customImageView.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        cell.customImageView.tag = indexPath.row
        
        cell.customLabel.text = allData[4].data.label[indexPath.row]
        
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
    
    // viewForSupplementaryElementOfKind" is a method in the UICollectionViewDelegate protocol of UIKit. It is used to return the supplementary view for a given section in a UICollectionView.
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CardsTitleViewCell", for: indexPath) as! CardsTitleViewCell
            header.titleLabel.text = "Cards"
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }

    @objc func buttonTapped(_ sender: UIButton) {
        let buttonName = allData[4].data.label[sender.tag]
        print(buttonName)
    }
}

