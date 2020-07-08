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
    
    let collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width * 0.41, height: 241)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 160, right: 0)
        layout.minimumLineSpacing = 28
        
        let cView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cView.showsVerticalScrollIndicator = false
        cView.backgroundColor = .background
        cView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        return cView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.backgroundColor = .background
        setupLogo()
        setupCollectionView()
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
    
    func setupCollectionView() {
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: logo.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
        ])
    }

}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.productName.text = "Cadeira Gamer Charles"
        cell.productImage.image = UIImage(named: "Cadeira")
        cell.priceLabel.text = "300.00"
        
        return cell
    }
    
    
}
