//
//  ViewController.swift
//  VK_app
//
//  Created by User on 03/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true )
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        guard let loginInput = loginLabel.text,
            let passwordInput = passwordLabel.text
            else {
                return
        }
       
          print(loginInput + " " + passwordInput)
    }
    
    
}

