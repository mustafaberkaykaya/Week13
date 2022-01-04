//
//  ViewController.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 30.12.2021.
//

import UIKit
import TinyConstraints
import MobilliumBuilders

class ViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let mainStackView = UIStackViewBuilder().axis(.vertical).spacing(20).build()
    private let nameTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your name.")
        .build()
    private let surNameTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your surname.")
        .build()
    private let emailTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your e-mail.")
        .build()
    private let usernameTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your username")
        .build()
    private let passwordTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your password")
        .isSecureTextEntry(true)
        .build()
    private let signUpButton = UIButtonBuilder().title("Sign Up").build()
    private let signInButton = UIButtonBuilder().title("Sign In").build()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        
        signInButton.addTarget(self, action: #selector(pushNewVC), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
    }
    
}

extension ViewController {
    private func addSubViews() {
        addScrollView()
        addMainStackView()
    }
    
    private func addScrollView() {
        view.addSubview(scrollView)
        scrollView.edgesToSuperview(usingSafeArea: true)
        scrollView.addSubview(contentView)
        contentView.edgesToSuperview()
        contentView.width(UIScreen.main.bounds.width)
    }
    
    private func addMainStackView() {
        contentView.addSubview(mainStackView)
        mainStackView.topToSuperview().constant = 25
        mainStackView.leadingToSuperview().constant = 20
        mainStackView.trailingToSuperview().constant = -20
        mainStackView.bottomToSuperview().constant = -25
        
        mainStackView.addArrangedSubview(nameTextField)
        mainStackView.addArrangedSubview(surNameTextField)
        mainStackView.addArrangedSubview(emailTextField)
        mainStackView.addArrangedSubview(usernameTextField)
        mainStackView.addArrangedSubview(passwordTextField)
        mainStackView.addArrangedSubview(signUpButton)
        mainStackView.addArrangedSubview(signInButton)
        
    }
    @objc
    func pushNewVC() {
        let nextVC = SignInViewController()
        self.present(nextVC, animated: true, completion: nil)

    }
    
    @objc
    func signUpButtonTapped() {
        let user = User(name: usernameTextField.text!, surname: surNameTextField.text!, email: emailTextField.text!, password: passwordTextField.text!, username: usernameTextField.text!)
        print(user.printDescription())

    }
}
