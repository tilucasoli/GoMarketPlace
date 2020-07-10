//
//  ProductCollectionViewCell.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 08/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    let productImage: UIImageView = {
        let imgView = UIImageView()
        imgView.backgroundColor = .gray
        return imgView
    }()
    
    let productName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .textColor
        label.numberOfLines = 2
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .primaryColor
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    let btnPlus: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "Plus"), for: .normal)
        
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 5
        
        setupProductImage()
        setupProductName()
        setupPriceLabel()
        setupBtnPlus()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupProductImage() {
        addSubview(productImage)
        
        productImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            productImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            productImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.78),
            productImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.78)
        ])
    }
    
    func setupProductName() {
        addSubview(productName)
        productName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productName.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 16),
            productName.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            productName.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)
        ])
    }
    
    func setupPriceLabel() {
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            priceLabel.topAnchor.constraint(equalTo: productName.bottomAnchor, constant: 8)
        ])
    }
    
    func setupBtnPlus() {
        addSubview(btnPlus)
        btnPlus.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btnPlus.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            btnPlus.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor),
            btnPlus.widthAnchor.constraint(equalToConstant: 13),
            btnPlus.heightAnchor.constraint(equalToConstant: 13)
        ])
    }
    
}
