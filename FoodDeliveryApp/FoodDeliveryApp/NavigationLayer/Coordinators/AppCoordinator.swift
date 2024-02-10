//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 31.01.2024.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private var userStorage = UserStorage.shared
    
    override func start() {
        if userStorage.passedOnboarding {
            showMainFlow()
        } else {
            showOnboardingFlow()
        }
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
        guard let navigationController = navigationController else { return }
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 0)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()
        
        let orderNavigatiobController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigatiobController)
        orderNavigatiobController.tabBarItem = UITabBarItem(title: "Order", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 1)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()
        
        let listNavigatiobController = UINavigationController()
        let listCoordinator = ListCoordinator(type: .list, navigationController: listNavigatiobController)
        listNavigatiobController.tabBarItem = UITabBarItem(title: "List", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 2)
        listCoordinator.finishDelegate = self
        listCoordinator.start()
        
        let profileNavigatiobController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigatiobController)
        profileNavigatiobController.tabBarItem = UITabBarItem(title: "Profile", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 3)
        profileCoordinator.finishDelegate = self
        profileCoordinator.start()
        
        addChildCoordinator(homeCoordinator)
        addChildCoordinator(orderCoordinator)
        addChildCoordinator(listCoordinator)
        addChildCoordinator(profileCoordinator)
        
        let tabBarControllers = [homeNavigationController, orderNavigatiobController, listNavigatiobController, profileNavigatiobController]
        
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        navigationController.pushViewController(tabBarController, animated: true)
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorFinishDelegate(childCoordinators: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinators)
        switch childCoordinators.type {
        case.onboarding:
            navigationController?.viewControllers.removeAll()
            showMainFlow()
        case .app:
            return
        default:
            navigationController?.popViewController(animated: false)
        }
    }
}
