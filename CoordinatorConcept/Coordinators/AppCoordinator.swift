//
//  AppCoordinator.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/21/22.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactory
    private let viewControllerFactory: ViewControllerFactory
    private let viewModelFactory: ViewModelFactory
    
    //private var launchInstructor = LaunchInstructor.configure()
    var launchInstructor = LaunchInstructor.configure()
    
    init(router: RouterProtocol,
         coordinatorFactory: CoordinatorFactory,
         viewControllerFactory: ViewControllerFactory,
         viewModelFactory: ViewModelFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
        self.viewModelFactory = viewModelFactory
    }
    
    override func start(with option: DeepLinkOption?) {
        if option != nil {
            
        } else {
            switch launchInstructor {
            case .onboarding: break
            case .auth: runAuthFlow()
            case .main: runMainFlow()
            }
        }
    }
    
    private func runAuthFlow() {
        let coordinator = coordinatorFactory.makeAuthCoordinator(router: router,
                                                                 coordinatorFactory: coordinatorFactory,
                                                                 viewControllerFactory: viewControllerFactory,
                                                                 viewModelFactory: viewModelFactory)
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runMainFlow() {
//        let coordinator = coordinatorFactory.makeAuthCoordinator(router: router,
//                                                                 coordinatorFactory: coordinatorFactory,
//                                                                 viewControllerFactory: viewControllerFactory)
//        coordinator.finishFlow = { [unowned self, unowned coordinator] in
//            self.removeDependency(coordinator)
//            self.launchInstructor = LaunchInstructor.configure(tutorialWasShown: false, isAutorized: true)
//            self.start()
//        }
//        addDependency(coordinator)
//        coordinator.start()
    }
}
