//
//  File.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 20/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

typealias MarketplaceTemplate = PersonalizedTabBar & PersonalizedTopBar

protocol PersonalizedTabBar: UIViewController {
    func setupPersonalizedTabBar() -> RedBarBottom
}

protocol PersonalizedTopBar: UIViewController {
    func setupPersonalizedTopBar() -> LogoView
}

extension PersonalizedTabBar {
    func setupPersonalizedTabBar() -> RedBarBottom {
        let redBar = RedBarBottom()
        let homeIndicatorColor = UIView()
        
        homeIndicatorColor.backgroundColor = .primaryColor
        
        view.addSubview(redBar)
        redBar.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(homeIndicatorColor)
        homeIndicatorColor.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            redBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            redBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            redBar.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        NSLayoutConstraint.activate([
            homeIndicatorColor.topAnchor.constraint(equalTo: redBar.bottomAnchor),
            homeIndicatorColor.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            homeIndicatorColor.leftAnchor.constraint(equalTo: view.leftAnchor),
            homeIndicatorColor.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        
        return redBar
    }
}

extension PersonalizedTopBar {
    func setupPersonalizedTopBar() -> LogoView {
        let logo = LogoView()
        
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            logo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.47)
        ])
        
        return logo
    }
}
