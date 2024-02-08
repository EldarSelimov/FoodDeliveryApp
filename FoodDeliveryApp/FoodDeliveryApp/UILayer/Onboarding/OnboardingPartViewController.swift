//
//  OnboardingPartViewController.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 04.02.2024.
//

import UIKit

class OnboardingPartViewController: UIViewController {
    
    
    var imageToShow: UIImage? {
        didSet {
            imageView.image = imageToShow
        }
    }
    
    var titleText: String? {
        didSet {
            titleLabel.text = titleText
        }
    }
    var descriptionText: String? {
        didSet {
            descriptionLabel.text = descriptionText
        }
    }
    
    
    private let imageView   = UIImageView()
    private let titleLabel  = UILabel()
    private let descriptionLabel = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    
}

private extension OnboardingPartViewController {
    func setupLayout() {
        setupView()
        setupImageView()
        setupTitleLabel()
        setupDescriptionLabel()
    }
    
    func setupView() {
        view.backgroundColor = AppColors.accentOrange
    }
    func setupImageView() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    func setupTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 25),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    func setupDescriptionLabel() {
        view.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.textColor = .white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerYAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -74),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 74)
        ])
    }
}
