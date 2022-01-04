//
//  SignInViewController.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 4.01.2022.
//

import UIKit
import TinyConstraints
import MobilliumBuilders

class SignInViewController: UIViewController {
    
    var chosenUsername: String = ""
    var chosenPassword: String = ""
    var chosenEmail: String = ""
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let mainStackView = UIStackViewBuilder().axis(.vertical).spacing(20).build()
    private let usernameTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your username.")
        .build()
    private let emailTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your e-mail.")
        .build()
    private let passwordTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your password")
        .isSecureTextEntry(true)
        .build()
    private let signInButton = UIButtonBuilder().title("Sign In").build()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("calisti")
        view.backgroundColor = .white
        addSubViews()
        getData()
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
    }
}

extension SignInViewController {
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
        
        mainStackView.addArrangedSubview(usernameTextField)
        mainStackView.addArrangedSubview(emailTextField)
        mainStackView.addArrangedSubview(passwordTextField)
        mainStackView.addArrangedSubview(signInButton)
        
    }
    
    private func getData() {
        
        if let username = UserDefaultsManager.shared.returnData(key: "username") as? String {
            chosenUsername = username
        }
        if let email = UserDefaultsManager.shared.returnData(key: "email") as? String {
           chosenEmail = email
        }
        if let password = UserDefaultsManager.shared.returnData(key: "password") as? String {
           chosenPassword = password
        }
       
    }
    
    @objc
    func signIn() {
        if usernameTextField.text == chosenUsername && passwordTextField.text == chosenPassword && chosenEmail == emailTextField.text {
            print("Başarılı")
            let homePage = HomePageViewController()
            present(homePage, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error",
                                          message: "Password or username or email is incorrect",
                                          preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
    }
}
