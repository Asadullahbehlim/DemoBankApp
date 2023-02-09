////
////  CardCell.swift
////  DemoBank
////
////  Created by Asadullah Behlim on 08/02/23.
////
//
//import UIKit
//
//class CardCell: UIView {
//    
//    let pYAImg = UIImageView()
//    let txtLabel = UILabel()
//    let frameView =  UIView()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        setUp()
//        layout()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    lazy var iconStackView: UIStackView = {
//        let view = UIStackView(arrangedSubviews: [pYAImg, txtLabel])
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.spacing = 15
//        view.axis = .vertical
//        return view
//    }()
//
//}
//extension CardCell {
//    
//    func setUp(){
//        translatesAutoresizingMaskIntoConstraints = false
//        frameView.translatesAutoresizingMaskIntoConstraints = false
//
//        pYAImg.translatesAutoresizingMaskIntoConstraints = false
//        pYAImg.image = UIImage(systemName: "iphone.and.arrow.forward")
//
//        
//        txtLabel.translatesAutoresizingMaskIntoConstraints = false
//        txtLabel.text = "Pay your contact"
//        txtLabel.numberOfLines = 0
//        txtLabel.textAlignment = .center
//        txtLabel.preferredMaxLayoutWidth = 70
//        txtLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
//        txtLabel.sizeToFit()
//        
//    }
//    
//    func layout()
//    {
//    
//        addSubview(iconStackView)
//        
//        NSLayoutConstraint.activate([
//            iconStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
//            iconStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0.2),
//            trailingAnchor.constraint(equalToSystemSpacingAfter: iconStackView.trailingAnchor, multiplier: 0),
//            bottomAnchor.constraint(equalToSystemSpacingBelow: iconStackView.bottomAnchor, multiplier: 1)
//            
//        ])
//    }
//}
