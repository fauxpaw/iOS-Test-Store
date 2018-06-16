//
//  Product.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/15/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

struct Product {
    
    let name : String
    let id: String
    let image: UIImage
    let brand = "Analytics Pros"
    let category = "Fruit"
    let variant = "None"
    let price : Double
    var quantity: Int = 0
    
    
    init(name: String, id: String, image: UIImage, price: Double, quantity: Int) {
        self.name = name
        self.id = id
        self.image = image
        self.price = price
        self.quantity = quantity
        
    }
    
    
    
}
