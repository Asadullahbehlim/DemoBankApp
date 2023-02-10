////
////  HeroHeaderView.swift
////  DemoBank
////
////  Created by Asadullah Behlim on 07/02/23.
////
////
///
///


import UIKit

class HeaderView: UIView {
    
    private let viewBalance: UIButton = {
        let button = UIButton()
        button.setTitle("View Balance", for: .normal)
        button.layer.borderColor = UIColor.systemRed.cgColor
        button.backgroundColor = .red
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let savingsLabel: UILabel = {
    //    let button = UIButton()
      //  button.setTitle("View Balance", for: .normal)
      //  button.layer.borderColor = UIColor.systemRed.cgColor
       // button.backgroundColor = .red
        let label = UILabel()
        label.text = "Saving = $29008"
        label.textColor = .blue
        return label
    }()
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "KotakCard")
        return imageView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(savingsLabel)
        addSubview(viewBalance)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let savinqConstraints = [
            savingsLabel.leadingAnchor.constraint(equalToSystemSpacingAfter:leadingAnchor, multiplier: 1),
            savingsLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            savingsLabel.widthAnchor.constraint(equalToConstant: 120)
        ]
        NSLayoutConstraint.activate(savinqConstraints)
        
        let downloadButtonConstraints = [
            viewBalance.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            viewBalance.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            viewBalance.widthAnchor.constraint(equalToConstant: 120)
            
        ]
        NSLayoutConstraint.activate(downloadButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}












//import Foundation
//import UIKit
//
//
//class HeaderView: UIView {
//    let backgroundImageView = UIImageView()
//    let textLabel = UILabel()
//    let button = UIButton(type: .system)
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        backgroundImageView.contentMode = .scaleAspectFill
//        backgroundImageView.clipsToBounds = true
//        addSubview(backgroundImageView)
//
//        textLabel.textColor = .white
//        addSubview(textLabel)
//
//        button.setTitle("Button", for: .normal)
//        addSubview(button)
//
//        setConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func setConstraints() {
//        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
//        textLabel.translatesAutoresizingMaskIntoConstraints = false
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
//            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
//
//            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
//            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
//
//            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
//            button.centerYAnchor.constraint(equalTo: centerYAnchor)
//        ])
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////class HeaderView: UIView {
////
////    let titleLabel: UILabel = {
////        let label = UILabel()
////        label.text = "Savings"
////        label.font = UIFont.preferredFont(forTextStyle: .callout )
////        label.textAlignment = .left
////        return label
////
////    }()
////
////    private let balanceButton: UIButton = {
////        let button = UIButton()
////        button.setTitle("View Balance", for: .normal)
////        button.layer.borderColor = UIColor.red.cgColor
////        button.layer.borderWidth = 1
////        button.layer.cornerRadius = 15
////        button.translatesAutoresizingMaskIntoConstraints = false
////        return button
////    }()
////
////    private let heroImageView: UIImageView = {
////            let imageView = UIImageView()
////            imageView.contentMode = .scaleAspectFit
////            imageView.clipsToBounds = true
////            imageView.image = UIImage(named: "KotakCard")
////            return imageView
////        }()
////
////    var overallStackView = UIStackView()
////
////    override init(frame: CGRect) {
////        super.init(frame: frame)
//////        setupLayout()
////      applyConstraints()
////    }
////    private func applyConstraints() {
////
////        overallStackView.addSubview(balanceButton)
////        overallStackView.addSubview(heroImageView)
////        overallStackView.addSubview(titleLabel)
////
////        let balanceButtonConstraints = [
////            balanceButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 70),
////            balanceButton.bottomAnchor.constraint(equalTo: heroImageView.bottomAnchor, constant: 100),
////            balanceButton.widthAnchor.constraint(equalToConstant: 120),
////
////            heroImageView.leadingAnchor.constraint(equalTo: overallStackView.leadingAnchor),
////            heroImageView.trailingAnchor.constraint(equalTo: overallStackView.trailingAnchor),
////            heroImageView.topAnchor.constraint(equalTo: overallStackView.topAnchor),
////            heroImageView.heightAnchor.constraint(equalToConstant: 100),
////
////            titleLabel.leadingAnchor.constraint(equalTo: heroImageView.leadingAnchor, constant: 50),
////            titleLabel.widthAnchor.constraint(equalToConstant: 40),
////            titleLabel.topAnchor.constraint(equalTo: heroImageView.topAnchor, constant: 10)
////        ]
////        NSLayoutConstraint.activate(balanceButtonConstraints)
////
////        balanceButton.translatesAutoresizingMaskIntoConstraints = false
////
////    }
////    override func layoutSubviews() {
////        super.layoutSubviews()
////        heroImageView.frame = bounds
////    }
////
////    required init?(coder: NSCoder) {
////        fatalError("init(coder:) has not been implemented")
////    }
////
////}

