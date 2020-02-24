//
//  AuthViewController.swift
//  AuthModule
//
//  Created by Максим Стегниенко on 24.02.2020.
//

import UIKit

public final class AuthViewController: UIViewController {
    // MARK: - Private properties
    
    private let loginTextField = UITextField()
    private let passwordTextField = UITextField()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

// MARK: - Private

private extension AuthViewController {
    enum Layout {
        static let topOffset: CGFloat = 50
        static let textFieldSize = CGSize(width: 200, height: 40)
    }
    
    func setupLayout() {
        view.backgroundColor = .white
        
        loginTextField.placeholder = "Login"
        loginTextField.textAlignment = .left
        loginTextField.textColor = .black
        loginTextField.keyboardType = .emailAddress
        
        view.addSubview(loginTextField)
        NSLayoutConstraint.activate([
            loginTextField.topAnchor.constraintEqualToSystemSpacingBelow(view.topAnchor, multiplier: Layout.topOffset),
            loginTextField.heightAnchor.constraint(equalToConstant: Layout.textFieldSize.height),
            loginTextField.widthAnchor.constraint(equalToConstant: Layout.textFieldSize.width)
        ])
    }
}
