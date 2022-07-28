//
//  ViewController.swift
//  Bankey
//
//  Created by Luiza Rodrigues de Almeida Avelino on 13/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension LoginViewController: ViewCode {
    func style() {
    }
    
    func layout() {
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
    }
    
    
}

