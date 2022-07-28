//
//  LoginView.swift
//  Bankey
//
//  Created by Luiza Rodrigues de Almeida Avelino on 28/07/22.
//

import UIKit

final class LoginView: UIView {
    
    private lazy var stack: UIStackView = {
        let element = UIStackView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.axis = .vertical
        element.spacing = 8
        
        return element
    }()
    
    lazy var usernameTextField: UITextField = {
        let element = UITextField()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.placeholder = "Username"
        element.delegate = self
        
        return element
    }()
    
    lazy var passwordTextField: UITextField = {
        let element = UITextField()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.placeholder = "Password"
        element.delegate = self
        element.isSecureTextEntry = true
        
        return element
    }()
    
    private lazy var divider: UIView = {
        let element = UIView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.backgroundColor = .secondarySystemFill
        
        return element
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    
}

extension LoginView:ViewCode {
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 4
        
        self.addSubview(stack)
        stack.addArrangedSubview(usernameTextField)
        stack.addArrangedSubview(divider)
        stack.addArrangedSubview(passwordTextField)
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            stack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            stack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            stack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            divider.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
}
