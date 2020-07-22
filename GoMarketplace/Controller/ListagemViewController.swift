//
//  ViewController.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 07/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class ListagemViewController: UIViewController, MarketplaceTemplate {
    
    var personalizedTopBar = LogoView()
    var personalizedTabBar = RedBarBottom()
    
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
        personalizedTopBar = setupPersonalizedTopBar()
        setupCollectionView()
        personalizedTabBar = setupPersonalizedTabBar()
    }
    
    func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: personalizedTopBar.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24)
        ])
    }

}

extension ListagemViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        guard let productCell = cell as? ProductCollectionViewCell else {
            return cell
        }
        
        productCell.productName.text = "Cadeira Gamer Charles"
        productCell.productImage.image = UIImage(named: "Cadeira")
        productCell.priceLabel.text = "300.00"
        
        return cell
    }
    
}
