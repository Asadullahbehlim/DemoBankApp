//
//  HeroHeaderView.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 07/02/23.
//
//
import UIKit

class HeaderView: UIView {
    
    private let viewBalance: UIButton = {
        let button = UIButton()
        button.setTitle("View Balance", for: .normal)
        button.layer.borderColor = UIColor.systemRed.cgColor
        button.backgroundColor = .systemRed
        button.layer.borderWidth = 1
     //   button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var savingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 15
        return stackView
    }()
    
    lazy var savingLabel: UILabel = {
        let label = UILabel()
        label.text = "Savings"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    lazy var salaryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "₹29008"
        label.textColor = .white
        return label
    }()
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
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
        savingStackView.addArrangedSubview(savingLabel)
        savingStackView.addArrangedSubview(salaryLabel)
        addSubview(viewBalance)
        addSubview(savingStackView)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let savingConstraints = [
            savingStackView.centerYAnchor.constraint(equalTo: heroImageView.centerYAnchor),
            savingStackView.leadingAnchor.constraint(equalTo: heroImageView.leadingAnchor, constant: 20),
        ]
        NSLayoutConstraint.activate(savingConstraints)
        
        let viewBalanceConstraints = [
            viewBalance.centerYAnchor.constraint(equalTo: heroImageView.centerYAnchor),
            viewBalance.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            viewBalance.widthAnchor.constraint(equalToConstant: 120)
            
        ]
        NSLayoutConstraint.activate(viewBalanceConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
