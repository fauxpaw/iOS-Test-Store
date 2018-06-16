//
//  LoginViewController.swift
//  iOS Test Store
//
//  Created by Michael Sweeney on 6/15/18.
//  Copyright © 2018 Analytics Pros. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginSuccessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSelectLoginSuccess(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "StoreListViewController")
        self.present(destinationVC, animated: true)
    }
    
    @IBAction func didSelectLoginFail(_ sender: Any) {
        
    }
}
