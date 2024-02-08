//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 31.01.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
    
    
}


private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [UIViewController]()
        
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(resource: .chickenLeg)
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        
        let secondtVC = OnboardingPartViewController()
        secondtVC.imageToShow = UIImage(resource: .shipped)
        secondtVC.titleText = "Fast Shipping"
        secondtVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        
        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(resource: .medal)
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        
        let fouthVC = OnboardingPartViewController()
        fouthVC.imageToShow = UIImage(resource: .creditCard)
        fouthVC.titleText = "Payment Online"
        fouthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
      
        pages.append(firstVC)
        pages.append(secondtVC)
        pages.append(thirdVC)
        pages.append(fouthVC)
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

