//
//  ViewController.swift
//  Password
//
//  Created by pedro tres on 02/06/22.
//

import UIKit

final class ViewController: UIViewController {
        
    private lazy var newPasswordTextField: PasswordTextField = {
        let password = PasswordTextField(placeHolderText: "New password")
        password.translatesAutoresizingMaskIntoConstraints = false
        return password
    }()
   
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
}

extension ViewController {
    func setupViews () {
        stackView.addArrangedSubview(newPasswordTextField)
        view.addSubview(stackView)
    }
    
    func setupConstraints () {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
            
        ])
    }
}

