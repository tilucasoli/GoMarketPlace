//
//  CarrinhoViewController.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 22/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import UIKit

class CarrinhoViewController: UIViewController, MarketplaceTemplate {
    
    var personalizedTopBar = LogoView()
    var personalizedTabBar = RedBarBottom()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .background
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.register(CarrinhoProductTableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        
        tableView.delegate = self
        tableView.dataSource = self
        
        personalizedTopBar = setupPersonalizedTopBar()
        setupTableView()
        personalizedTabBar = setupPersonalizedTabBar()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: personalizedTopBar.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -56)
            
        ])
    }

}

extension CarrinhoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 124 + 12
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let productCell = cell as? CarrinhoProductTableViewCell else {
            return cell
        }
        productCell.selectionStyle = .none
        productCell.productImage.image = UIImage(named: "Cadeira")
        productCell.productName.text = "Cadeira Gamer Charles"
        productCell.individualPrice.text = "R$ 300,00"
        productCell.totalPrice.text = "2x R$ 600,00"
        
        return productCell
    }
    
    
}
