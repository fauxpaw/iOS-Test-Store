//
//  Cart.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/16/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//


// This is a horrible implementation, please don't judge me! =)  Singletons are usually not a good idea in production level code but will serve our purposes while giving me a good return on time from zero to minimum viable product.


import Foundation

class Cart {
    
    static let shared = Cart()
    
    var products: [Product] = [Product(type: FruitType.Apple, quantity: 0), Product(type: FruitType.Banana, quantity: 0), Product(type: FruitType.Orange, quantity: 0)]
    
    private init() {}
    
    
    // use this method to add to the quantity of a fruit in the cart
    func incrementCountFor(fruitType: FruitType) {
        if let product = self.productFor(fruitType: fruitType) {
            guard product.quantity != nil else {product.quantity = 1; return}
            product.quantity! += 1
            return
        }
        print("failed to increment")
        return
    }
    
    // Typically use this method instead of checking the products array for count. This will ignore products whose count is 0
    func itemCount() -> Int {
        var count = 0
        for product in products {
            if let q = product.quantity {
                if q > 0 {
                    count += 1
                }
            }
        }
        return count
    }
    
    // use this method to return a list of the non-zero counts of fruit
    func fruitsInCart() -> [FruitType] {
        var fruits = [FruitType]()
        for product in products {
            if let q = product.quantity {
                if q > 0 {
                    fruits.append(product.fruitType)
                }
            }
        }
        return fruits
    }
    
    // use this method to return an array with only products that have quantities greater than 0
    func actualProductsInCart() -> [Product]{
        var fruits = [Product]()
        for product in products {
            if let q = product.quantity {
                if q > 0 {
                    fruits.append(product)
                }
            }
        }
        return fruits
    }
    
    // use this method to search the products array for a specific fruit and return it (or nil if fruit is not found)
    func productFor(fruitType: FruitType) -> Product? {
        
        for item in self.products {
            if item.fruitType == fruitType {
                return item
            }
        }
        return nil
    }
    
    // use this method to quickly calculate the combined cost of every item in the cart
    func totalCostForCartItems() -> Double {
        var cost = 0.0
        for product in products {
            if product.quantity != nil {
                cost += (Double(product.quantity!) * product.price)
            }
        }
        return cost
    }
}
