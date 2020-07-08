//
//  TabBarBottom.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 08/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class RedBarBottom: UIView {
    
    let icon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Carrinho")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let itensLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "16 itens"
        label.textColor = .background
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 21)
        label.text = "R$ 5.597,00"
        label.textColor = .background
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .primaryColor
        
        setupIcon()
        setupItensLabel()
        setupPriceLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupIcon() {
        addSubview(icon)
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            icon.heightAnchor.constraint(equalToConstant: 24),
            icon.widthAnchor.constraint(equalToConstant: 24),
        ])
    }
    
    func setupItensLabel() {
        addSubview(itensLabel)
        itensLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itensLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            itensLabel.leftAnchor.constraint(equalTo: icon.rightAnchor, constant: 24)
        ])
    }
    
    func setupPriceLabel() {
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            priceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -24)
        ])
    }
}

