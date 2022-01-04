//
//  HomePageViewController.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 4.01.2022.
//

import UIKit
import TinyConstraints
import MobilliumBuilders

class HomePageViewController: UIViewController {
    private let welcomeLabel = UILabelBuilder().text("Welcome!").textColor(.black).build()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        view.addSubview(welcomeLabel)
        welcomeLabel.centerInSuperview()
    }
}
