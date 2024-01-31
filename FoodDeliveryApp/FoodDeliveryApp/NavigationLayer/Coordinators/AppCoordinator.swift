//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 31.01.2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    
    override func start() {
        showOnboardingFlow()
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}

private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    func showMainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorFinishDelegate(childCoordinators: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinators)
        switch childCoordinators.type {
        case .app:
            return
        default:
            navigationController?.popViewController(animated: false)
        }
    }
}
