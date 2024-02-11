//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 31.01.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    private let factory = SceneFactory.self
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        print("AppCoordinator finish")
        finishDelegate?.coordinatorFinishDelegate(childCoordinators: self)
    }
    
}


private extension OnboardingCoordinator {
    func showOnboarding() {
        
       let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

