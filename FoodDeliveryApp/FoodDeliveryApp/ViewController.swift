//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 30.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello world"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 200)
        ])
        
        label.font = UIFont(name: "Roboto-Italic", size: 40)
        label.textColor = AppColors.accentOrange
        
        view.backgroundColor = AppColors.background
        
    }

}

