//
//  ProductDetailViewController.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/16/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var showCartButton: UIButton!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var priceLabe: UILabel!
    var product: Product!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productImageView.image = product.image
        self.priceLabe.text = "$\(product.price)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSelectAddToCartButton(_ sender: Any) {
        Cart.shared.incrementCountFor(fruitType: product.fruitType)
    }
    
    @IBAction func didSelectShowCartButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let cartVC = storyboard.instantiateViewController(withIdentifier: "CartViewController") as? CartViewController else {return}
        self.navigationController?.pushViewController(cartVC, animated: true)
    }
    
}
