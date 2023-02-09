//
//  CustomCollectionViewCell.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 08/02/23.
//
//
//import UIKit
//
//class CustomCollectionViewCell: UICollectionViewCell {
//
//    static let identifier = "CustomCollectionViewCell"
//
//    let cardCell = CardCell()
//
//    private let myImageView: UIImageView = {
//    //    let imageView = UIImageView()
//        let imageView = UIImage(systemName: "iphone.and.arrow.forward")
//
//     //   imageView.image = UIImage("iphone.and.arrow.forward")
//        return imageView!
//    }()

//
//    private let myLabel: UILabel = {
//        let label = UILabel()
//       label.text = "Pay Your Contacts"
//        label.backgroundColor = .systemMint
//        label.textColor = .black
//        return label
//    }()
//
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        //contentView.backgroundColor = .systemRed
//       // contentView.addSubview(myLabel)
//     //   contentView.addSubview(myImageView)
//       // contentView.clipsToBounds = true
//        contentView.addSubview(cardCell)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        myLabel.frame = CGRect(x:5,
//                               y: contentView.frame.size.height-50,
//                               width: contentView.frame.size.height-10,
//                               height: 50)
//
////        myImageView.frame = CGRect(x:5,
////                               y: contentView.frame.size.height-10,
////                               width: contentView.frame.size.height-50,
////                               height: 50)
//    }
    
//    public func configure(label: String) {
//        myLabel.text = label
//    }
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        myLabel.text = nil
//    }
    
//}
