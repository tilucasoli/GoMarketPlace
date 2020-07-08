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
    let redBar = RedBarBottom()
//    let collectionView: UICollectionView = {
//        
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .background
        setupLogo()
        setupRedBar()
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
    
    func setupRedBar() {
        view.addSubview(redBar)
        redBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            redBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            redBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            redBar.heightAnchor.constraint(equalToConstant: 56),
        ])
        
    }

}

