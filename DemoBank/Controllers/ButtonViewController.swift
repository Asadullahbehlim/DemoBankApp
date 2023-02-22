//
//  ButtonViewController.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 22/02/23.
//

import Foundation
import UIKit

class ButtonViewController: UIViewController {
    var buttonToShow: String = String()

    private let buttonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textAlignment = .center
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonLabel.text = buttonToShow

        view.backgroundColor = .white

        view.addSubview(buttonLabel)

        NSLayoutConstraint.activate([
            buttonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
   
}
