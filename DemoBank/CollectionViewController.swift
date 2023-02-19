////
////  collectionViewController.swift
////  DemoBank
////
////  Created by Asadullah Behlim on 16/02/23.
////
//
//
//import Foundation
//import UIKit
//
//class collectionViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let quickAccessLabelArray = ["Pay your Contact", "Loan and Card offers", "Account overview", "Scan any \n QR"]
//
//    let quickAccessNameArray = ["iphone.homebutton", "banknote", "indianrupeesign.circle", "qrcode.viewfinder"]
//    
//    let bankiconLabelArray = ["Account Overview", "Account Activity", "Statement\n", "Fixed/Recurring", "One View\n", "Cheque Requests", "Spendz Prepaid", "See more\n"]
//       
//    let bankiconNameArray = ["indianrupeesign.circle", "arrow.up.arrow.down", "note.text", "bitcoinsign.circle.fill", "eye", "banknote.fill", "cart", "chevron.right.circle.fill"]
//    
//    let payTransfericonLabelArray = ["Transfer Money", "Bill Pay & Recharge", "BHIM UPI", "Scan Any QR", "One Time Transfer\n", "Pay Your contact", "Add/Manage Beneficiary", "See more\n"]
//     
//    let payTransfericonNameArray = ["rectangle.portrait.and.arrow.right", "b.circle.fill", "arrow.right.square", "qrcode.viewfinder", "1.circle", "rectangle.portrait.and.arrow.right", "person.fill.badge.plus", "chevron.right.circle.fill"]
//      
//    let loansiconLabelArray = ["Free Credit Score", "Loan & Card Offers", "Personal Loan", "Home Loan", "Pay Day Loan\n", "Consumer Durable Loan", "Pay Overdue EMI", "See more\n"]
//       
//    let loansiconNameArray = ["speedometer", "hand.draw", "folder.fill.badge.person.crop", "house.circle.fill", "indianrupeesign.circle.fill", "laptopcomputer.and.iphone", "creditcard.trianglebadge.exclamationmark", "chevron.right.circle.fill"]
//        
//    let cardsiconLabelArray = ["Debit Card", "Forex Card", "Image\n Debit Card", "Smart \n EMI Card", "FASTag", "Kotak \n Gift Card", "Card \n Protection", "See more\n"]
//       
//    let cardsiconNameArray = ["creditcard.and.123", "creditcard", "lanyardcard.fill", "menucard", "tag.fill", "giftcard", "lock.doc", "arrow.right.circle.fill"]
//        
//    let collectionView: UICollectionView = {
//      let layout = UICollectionViewFlowLayout()
//        
//        // UICollectionViewFlowLayout is a concrete class of UICollectionViewLayout that has all its four members implemented, in the way that the cells will be arranged in a grid manner.
//        
//        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
//        
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    
//    let cellId = [QuickAccessCollectionViewCell(), BankCollectionViewCell(), PayTransferCollectionViewCell(), LoansCollectionViewCell(), CardsCollectionViewCell()]
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = appGrayColor
//        collectionView.register(QuickAccessCollectionViewCell.self, forCellWithReuseIdentifier: QuickAccessCollectionViewCell().identifier)
//        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: BankCollectionViewCell().identifier)
//        collectionView.register(PayTransferCollectionViewCell().self, forCellWithReuseIdentifier: PayTransferCollectionViewCell().identifier)
//        collectionView.register(LoansCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(CardsCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//                
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        4
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//    
//    
//   
//    
//    
//    
//    
//}
//
//class QuickAccessViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let iconLabelArray = ["Pay your Contact", "Loan and Card offers", "Account overview", "Scan any \n QR"]
//
//    let iconNameArray = ["iphone.homebutton", "banknote", "indianrupeesign.circle", "qrcode.viewfinder"]
////
////    let iconDict : [String: Any] = ["Pay your Contact" : "iphone.homebutton", "Loan and Card offers" : "banknote", "Account overview" : "indianrupeesign.circle", "Scan any \n QR" : "qrcode.viewfinder"  ]
////
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        // UICollectionViewFlowLayout is a concrete class of UICollectionViewLayout that has all its four members implemented, in the way that the cells will be arranged in a grid manner.
//        
//        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
//        
//        
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    let cellId = "QuickAccessCollectionViewCell"
//      
//      override init(frame: CGRect) {
//          super.init(frame: frame)
//          collectionView.dataSource = self
//          collectionView.delegate = self
//          collectionView.backgroundColor = appGrayColor
//          collectionView.register(QuickAccessCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//          collectionView.register(QuickAccessHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "QuickAccessHeaderTitleViewCell")
//          
//
//          addSubview(collectionView)
//          collectionView.translatesAutoresizingMaskIntoConstraints = false
//          NSLayoutConstraint.activate([
//              collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//              collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
//              collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
//              collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5)
//          ])
//      }
//      
//      required init?(coder: NSCoder) {
//          fatalError("init(coder:) has not been implemented")
//      }
//      
//      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//          return 4
//      }
//      
//      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//          //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//          //        cell.backgroundColor = .red
//          //        cell.layer.cornerRadius = 15
//          //        return cell
//          
//          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuickAccessCollectionViewCell", for: indexPath) as! QuickAccessCollectionViewCell
//          
//          cell.customImageView.setImage(UIImage(systemName: iconNameArray[indexPath.row]), for: .normal)
//          // And in the cellForItemAt method:
//          cell.customImageView.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//          cell.customImageView.tag = indexPath.row
//          
//          cell.customLabel.text = iconLabelArray[indexPath.row]
//          
//          return cell
//      }
//      
//      
//      
//      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//          return CGSize(width: 85, height: 85)
//      }
//      
//  //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//  //        return 0
//  //    }
//  //
//  //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//  //        return 0
//  //    }
//      
//      func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//          if kind == UICollectionView.elementKindSectionHeader {
//              let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "QuickAccessHeaderTitleViewCell", for: indexPath) as! QuickAccessHeaderTitleViewCell
//              header.titleLabel.text = "Quick Access"
//              return header
//          }
//          return UICollectionReusableView()
//      }
//      
//      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//          return CGSize(width: collectionView.frame.width, height: 40)
//      }
//      
//   
//      @objc func buttonTapped(_ sender: UIButton) {
//          let buttonName = iconLabelArray[sender.tag]
//          print(buttonName)
//      }
//  }
//
//
//class BankViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let iconLabelArray = ["Account Overview", "Account Activity", "Statement\n", "Fixed/Recurring", "One View\n", "Cheque Requests", "Spendz Prepaid", "See more\n"]
//   
//    let iconNameArray = ["indianrupeesign.circle", "arrow.up.arrow.down", "note.text", "bitcoinsign.circle.fill", "eye", "banknote.fill", "cart", "chevron.right.circle.fill"]
//    
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        
//        // UICollectionViewFlowLayout is a concrete class of UICollectionViewLayout that has all its four members implemented, in the way that the cells will be arranged in a grid manner.
//        
//        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
//        
//        
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    let cellId = "BankCollectionViewCell"
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = .white
//        collectionView.layer.cornerRadius = 20
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(BankHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BankHeaderTitleViewCell")
//
//        addSubview(collectionView)
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
//            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
//        ])
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 8
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        //        cell.backgroundColor = .red
//        //        cell.layer.cornerRadius = 15
//        //        return cell
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCollectionViewCell", for: indexPath) as! BankCollectionViewCell
//        
//        cell.customImageView.image = UIImage(systemName: iconNameArray[indexPath.row])
//        
//        cell.customLabel.text = iconLabelArray[indexPath.row]
//        
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
//    
//    
//    // 'viewForSupplementaryElementOfKind' - This method is called by a collection view when it needs to display a supplementary view, such as a header or footer, and asks the delegate to provide a corresponding view.
//    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BankHeaderTitleViewCell", for: indexPath) as! BankHeaderTitleViewCell
//            header.titleLabel.text = "Bank"
//            return header
//        }
//        return UICollectionReusableView()
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: 50)
//    }
//
//
//}
//
//
//class PayTransferViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let iconLabelArray = ["Transfer Money", "Bill Pay & Recharge", "BHIM UPI", "Scan Any QR", "One Time Transfer\n", "Pay Your contact", "Add/Manage Beneficiary", "See more\n"]
//   
//    let iconNameArray = ["rectangle.portrait.and.arrow.right", "b.circle.fill", "arrow.right.square", "qrcode.viewfinder", "1.circle", "rectangle.portrait.and.arrow.right", "person.fill.badge.plus", "chevron.right.circle.fill"]
//    
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    let cellId = "BankCollectionViewCell"
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = .white
//        collectionView.layer.cornerRadius = 20
//        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(BankHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BankHeaderTitleViewCell")
//
//        addSubview(collectionView)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
//            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
//        ])
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 8
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        //        cell.backgroundColor = .red
//        //        cell.layer.cornerRadius = 15
//        //        return cell
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCollectionViewCell", for: indexPath) as! BankCollectionViewCell
//        
//        cell.customImageView.image = UIImage(systemName: iconNameArray[indexPath.row])
//        
//        cell.customLabel.text = iconLabelArray[indexPath.row]
//        
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
//
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BankHeaderTitleViewCell", for: indexPath) as! BankHeaderTitleViewCell
//            header.titleLabel.text = "Pay & Transfer"
//            return header
//        }
//        return UICollectionReusableView()
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: 50)
//    }
//
//
//}
//
//
//class LoansViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let iconLabelArray = ["Free Credit Score", "Loan & Card Offers", "Personal Loan", "Home Loan", "Pay Day Loan\n", "Consumer Durable Loan", "Pay Overdue EMI", "See more\n"]
//   
//    let iconNameArray = ["speedometer", "hand.draw", "folder.fill.badge.person.crop", "house.circle.fill", "indianrupeesign.circle.fill", "laptopcomputer.and.iphone", "creditcard.trianglebadge.exclamationmark", "chevron.right.circle.fill"]
//    
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    let cellId = "BankCollectionViewCell"
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = .white
//        collectionView.layer.cornerRadius = 20
//        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(BankHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BankHeaderTitleViewCell")
//
//        addSubview(collectionView)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
//            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
//        ])
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 8
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        //        cell.backgroundColor = .red
//        //        cell.layer.cornerRadius = 15
//        //        return cell
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCollectionViewCell", for: indexPath) as! BankCollectionViewCell
//        
//        cell.customImageView.image = UIImage(systemName: iconNameArray[indexPath.row])
//        
//        cell.customLabel.text = iconLabelArray[indexPath.row]
//        
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
//    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BankHeaderTitleViewCell", for: indexPath) as! BankHeaderTitleViewCell
//            header.titleLabel.text = "Loans"
//            return header
//        }
//        return UICollectionReusableView()
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: 50)
//    }
//
//
//}
//
//
//class CardsViewController: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    let iconLabelArray = ["Debit Card", "Forex Card", "Image\n Debit Card", "Smart \n EMI Card", "FASTag", "Kotak \n Gift Card", "Card \n Protection", "See more\n"]
//   
//    let iconNameArray = ["creditcard.and.123", "creditcard", "lanyardcard.fill", "menucard", "tag.fill", "giftcard", "lock.doc", "arrow.right.circle.fill"]
//    
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//     //   UICollectionViewFlowLayout is a class in UIKit that provides a layout for a UICollectionView object
//        
//        // By using UICollectionViewFlowLayout, you can customize the layout of a collection view by specifying things like the size and position of items, the spacing between items and sections, and the direction of the scrolling.
//        
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .white
//        return cv
//    }()
//    
//    let cellId = "BankCollectionViewCell"
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.backgroundColor = .white
//        collectionView.layer.cornerRadius = 20
//        collectionView.register(BankCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//        collectionView.register(BankHeaderTitleViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BankHeaderTitleViewCell")
//
//        addSubview(collectionView)
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
//            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            collectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
//        ])
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 8
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        //        cell.backgroundColor = .red
//        //        cell.layer.cornerRadius = 15
//        //        return cell
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCollectionViewCell", for: indexPath) as! BankCollectionViewCell
//        
//        cell.customImageView.image = UIImage(systemName: iconNameArray[indexPath.row])
//        
//        cell.customLabel.text = iconLabelArray[indexPath.row]
//        
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
//    
//    // viewForSupplementaryElementOfKind" is a method in the UICollectionViewDelegate protocol of UIKit. It is used to return the supplementary view for a given section in a UICollectionView.
//    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BankHeaderTitleViewCell", for: indexPath) as! BankHeaderTitleViewCell
//            header.titleLabel.text = "Cards"
//            return header
//        }
//        return UICollectionReusableView()
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: 50)
//    }
//
//    
//
//}
//
//
//
//
//
//
//
//
