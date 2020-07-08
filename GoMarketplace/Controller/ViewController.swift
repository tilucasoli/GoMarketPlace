//
//  ViewController.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 07/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let logo = LogoView()
    
//    let collectionView: UICollectionView = {
//        
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .background
        setupLogo()
    }
    
    func setupLogo() {
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            logo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.47),
        ])
    }

}

