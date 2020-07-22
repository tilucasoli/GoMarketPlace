//
//  ShopList.swift
//  GoMarketplace
//
//  Created by Lucas Oliveira on 22/07/20.
//  Copyright © 2020 Lucas Oliveira. All rights reserved.
//

import Foundation

struct ShopList {
    var list = [Product]()
    
    func showTotal() -> Double {
        let priceList = list.map { $0.price }
        return priceList.reduce(0, {$0+$1})
    }
}
