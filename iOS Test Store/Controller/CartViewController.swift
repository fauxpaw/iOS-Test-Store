//
//  CartViewController.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/16/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.priceLabel.text = "$\(Cart.shared.totalCostForCartItems())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cartCell")
        let products = Cart.shared.actualProductsInCart()
        let name = products[indexPath.row].name
        cell.textLabel?.text = "\(name) (\(products[indexPath.row].quantity!))"
        cell.imageView?.image = products[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cart.shared.itemCount()
    }

    @IBAction func didSelectCheckoutButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let checkoutVC = storyboard.instantiateViewController(withIdentifier: "CheckoutViewController")
        self.navigationController?.pushViewController(checkoutVC, animated: true)
    }
}
