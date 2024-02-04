//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Eldar on 03.02.2024.
//

import UIKit


protocol OnboardingViewOutput: AnyObject {
    func onbordingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput  {
    
    
    weak var coordinator: OnboardingCoordinator?
    init(coordinator: OnboardingCoordinator? = nil) {
        self.coordinator = coordinator
    }
        
    
    func onbordingFinish() {
        coordinator?.finish()
    }
      
}
