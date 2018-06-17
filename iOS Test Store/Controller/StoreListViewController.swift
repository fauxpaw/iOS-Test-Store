//
//  StoreListViewController.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/15/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class StoreListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.initializeProducts()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initializeProducts() {
        let apple = Product(type: .Apple)
        let banana = Product(type: .Banana)
        let orange = Product(type: .Orange)
        self.products.append(apple)
        self.products.append(banana)
        self.products.append(orange)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "productCell")
        let name = products[indexPath.row].name
        cell.textLabel?.text = name
        cell.imageView?.image = products[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: false)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let productDetailVC = storyboard.instantiateViewController(withIdentifier: "ProductDetailViewController") as? ProductDetailViewController else {return}
        productDetailVC.product = self.products[indexPath.row]
        self.navigationController?.pushViewController(productDetailVC, animated: true)
    }

}
