//
//  CustomCollectionViewCell.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 11/02/23.
//

import Foundation
import UIKit

class QuickAccessCollectionViewCell: UICollectionViewCell {
    let customImageView = UIImageView()
    let customLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        customImageView.contentMode = .scaleAspectFit
        customImageView.clipsToBounds = true
        customImageView.translatesAutoresizingMaskIntoConstraints = false
        customImageView.tintColor = .red
        customImageView.backgroundColor = .white
        contentView.addSubview(customImageView)

        customLabel.textAlignment = .center
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        customLabel.numberOfLines = 2
        customLabel.lineBreakMode = .byWordWrapping
        customLabel.font = UIFont.systemFont(ofSize: 14)
        contentView.addSubview(customLabel)

        NSLayoutConstraint.activate([
            customImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            customImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            customImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            customImageView.bottomAnchor.constraint(equalTo: customLabel.topAnchor, constant: -5),

            customLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            customLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            customLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
