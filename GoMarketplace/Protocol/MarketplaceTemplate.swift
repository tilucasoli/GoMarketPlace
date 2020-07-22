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
        
        view.addSubview(redBar)
        redBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            redBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            redBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            redBar.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        return redBar
    }
}

extension PersonalizedTopBar {
    func setupPersonalizedTopBar() -> LogoView {
        let logo = LogoView()
        let homeIndicatorColor = UIView()
        
        homeIndicatorColor.backgroundColor = .primaryColor
        
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(homeIndicatorColor)
        homeIndicatorColor.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            logo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.47)
        ])

        NSLayoutConstraint.activate([
            homeIndicatorColor.topAnchor.constraint(equalTo: logo.bottomAnchor),
            homeIndicatorColor.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            homeIndicatorColor.leftAnchor.constraint(equalTo: view.leftAnchor),
            homeIndicatorColor.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        
        return logo
    }
}
