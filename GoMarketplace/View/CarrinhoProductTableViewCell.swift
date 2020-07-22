//
//  CarrinhoProductTableViewCell.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 22/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class CarrinhoProductTableViewCell: UITableViewCell {
    let view: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        return view
    }()
    
    
    let productImage: UIImageView = {
        let imgView = UIImageView()
        imgView.backgroundColor = .gray
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    let productName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .textColor
        label.numberOfLines = 2
        
        return label
    }()
    
    let individualPrice: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = .secondTextColor
        
        return label
    }()
    
    
    let totalPrice: UILabel = {
        let label = UILabel()
        label.textColor = .primaryColor
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        return label
    }()
    
    let btnRedPlus: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .primaryColorWithOpacity
        btn.layer.cornerRadius = 5
        
        btn.setImage(UIImage(named: "PlusRed"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        let imgEdge: CGFloat = 15
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: imgEdge, bottom: 0, right: imgEdge)
        
        return btn
    }()
    
    let btnRedMinus: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .primaryColorWithOpacity
        btn.layer.cornerRadius = 5
        
        btn.setImage(UIImage(named: "MinusRed"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        let imgEdge: CGFloat = 15
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: imgEdge, bottom: 0, right: imgEdge)
        
        return btn
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .background
        layer.cornerRadius = 5
        
        setupView()
        setupProductImage()
        setupProductName()
        setupIndividualPrice()
        setupTotalPrice()
        setupBtnPlus()
        setupBtnMinus()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
            
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leftAnchor.constraint(equalTo: leftAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            view.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
    
    func setupProductImage() {
        addSubview(productImage)
        productImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            productImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            productImage.heightAnchor.constraint(equalToConstant: 92),
            productImage.widthAnchor.constraint(equalToConstant: 92)
        ])
    }
    
    func setupProductName() {
        addSubview(productName)
        productName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productName.topAnchor.constraint(equalTo: productImage.topAnchor),
            productName.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 16),
            productName.widthAnchor.constraint(equalToConstant: 110)
        ])
    }
    
    func setupIndividualPrice() {
        addSubview(individualPrice)
        individualPrice.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            individualPrice.topAnchor.constraint(equalTo: productName.bottomAnchor, constant: 8),
            individualPrice.leftAnchor.constraint(equalTo: productName.leftAnchor),
        ])
    }
    
    func setupTotalPrice() {
        addSubview(totalPrice)
        totalPrice.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalPrice.topAnchor.constraint(equalTo: individualPrice.bottomAnchor, constant: 8),
            totalPrice.leftAnchor.constraint(equalTo: productName.leftAnchor),
        ])
    }
    
    func setupBtnPlus() {
        addSubview(btnRedPlus)
        
        btnRedPlus.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btnRedPlus.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            btnRedPlus.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            btnRedPlus.heightAnchor.constraint(equalToConstant: 40),
            btnRedPlus.widthAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    func setupBtnMinus() {
        addSubview(btnRedMinus)
        btnRedMinus.imageView?.image = UIImage(named: "MinusPlus")
        btnRedMinus.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btnRedMinus.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            btnRedMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -18),
            btnRedMinus.heightAnchor.constraint(equalToConstant: 40),
            btnRedMinus.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
