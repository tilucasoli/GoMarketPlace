//
//  LogoView.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 07/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    let logo: UIImageView = {
        let imgView = UIImageView()
        
        imgView.image = UIImage(named: "Logo")
        imgView.contentMode = .scaleAspectFit
    
        return imgView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setuplogo()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setuplogo() {
        addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: topAnchor),
            logo.leftAnchor.constraint(equalTo: leftAnchor),
            logo.rightAnchor.constraint(equalTo: rightAnchor),
            logo.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}
