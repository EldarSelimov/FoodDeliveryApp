//
//  SceneFactory.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 11.02.2024.
//

import UIKit

struct SceneFactory {
    
    static func makeOnboardingFlow(finishDelegate: CoordinatorFinishDelegate, navigationController: UINavigationController, coordinator: AppCoordinator) {
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: finishDelegate)
        coordinator.addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    
    static func makeOnboardingScene(coordinator: OnboardingCoordinator) -> OnboardingViewController {
        var pages = [OnboardingPartViewController]()
        
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(resource: .chickenLeg)
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        firstVC.buttonText = "Next"
        
        let secondtVC = OnboardingPartViewController()
        secondtVC.imageToShow = UIImage(resource: .shipped)
        secondtVC.titleText = "Fast Shipping"
        secondtVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        secondtVC.buttonText = "Next"
        
        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(resource: .medal)
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        thirdVC.buttonText = "Next"
        
        let fouthVC = OnboardingPartViewController()
        fouthVC.imageToShow = UIImage(resource: .creditCard)
        fouthVC.titleText = "Payment Online"
        fouthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
        fouthVC.buttonText = "Cool"
        
        pages.append(firstVC)
        pages.append(secondtVC)
        pages.append(thirdVC)
        pages.append(fouthVC)
        
        let presenter = OnboardingViewPresenter(coordinator: coordinator)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        return viewController
    }
    
    static func makeMainFlow(coordinator: AppCoordinator, finishDelegate: CoordinatorFinishDelegate) -> TabBarController {
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 0)
        homeCoordinator.finishDelegate = finishDelegate
        homeCoordinator.start()
        
        let orderNavigatiobController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigatiobController)
        orderNavigatiobController.tabBarItem = UITabBarItem(title: "Order", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 1)
        orderCoordinator.finishDelegate = finishDelegate
        orderCoordinator.start()
        
        let listNavigatiobController = UINavigationController()
        let listCoordinator = ListCoordinator(type: .list, navigationController: listNavigatiobController)
        listNavigatiobController.tabBarItem = UITabBarItem(title: "List", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 2)
        listCoordinator.finishDelegate = finishDelegate
        listCoordinator.start()
        
        let profileNavigatiobController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigatiobController)
        profileNavigatiobController.tabBarItem = UITabBarItem(title: "Profile", image:  UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 3)
        profileCoordinator.finishDelegate = finishDelegate
        profileCoordinator.start()
        
        coordinator.addChildCoordinator(homeCoordinator)
        coordinator.addChildCoordinator(orderCoordinator)
        coordinator.addChildCoordinator(listCoordinator)
        coordinator.addChildCoordinator(profileCoordinator)
        
        let tabBarControllers = [homeNavigationController, orderNavigatiobController, listNavigatiobController, profileNavigatiobController]
        
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        return tabBarController
    }
}
