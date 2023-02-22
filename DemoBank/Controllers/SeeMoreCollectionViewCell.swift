//
//  SeeMoreCollectionViewCell.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 23/02/23.
//

import Foundation
import UIKit

class SeeMoreCollectionViewCell: UICollectionViewCell {
    private let seeMoreLabel: UILabel = {
        let label = UILabel()
        label.text = "See more"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .blue
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(seeMoreLabel)
        seeMoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            seeMoreLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            seeMoreLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
