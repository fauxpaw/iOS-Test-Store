//
//  Product.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/15/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class Product {
    
    let name : String
    let id: String
    let image: UIImage
    let brand = "Analytics Pros"
    let category = "Fruit"
    let variant = "None"
    let currency = "USD"
    let price : Double
    var quantity: Int?
    let fruitType: FruitType
    
    
    init(name: String, id: String, image: UIImage, price: Double, type: FruitType, quantity: Int? = nil) {
        self.name = name
        self.id = id
        self.image = image
        self.price = price
        self.fruitType = type
        if let q = quantity {
            self.quantity = q
        }
    }
}

extension Product {
    convenience init(type: FruitType, quantity: Int? = nil) {
        switch type {
        case .Apple:
            self.init(name: nmApple, id: appleID, image: appleImage, price: applePrice, type: type)
            if let q = quantity {
                self.quantity = q
            }
        case .Banana:
            self.init(name: nmBanana, id: bananaID, image: bananaImage, price: bananaPrice, type: type)
            if let q = quantity {
                self.quantity = q
            }
        case .Orange:
            self.init(name: nmOrange, id: orangeID, image: orangeImage, price: orangePrice, type: type)
            if let q = quantity {
                self.quantity = q
            }
        }
    }
}
