//
//  CheckoutViewController.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/16/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func didSelectPurchaseButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let confirmationVC = storyboard.instantiateViewController(withIdentifier: "PurchaseConfirmationViewController")
        self.navigationController?.pushViewController(confirmationVC, animated: true)
    }
    
}
