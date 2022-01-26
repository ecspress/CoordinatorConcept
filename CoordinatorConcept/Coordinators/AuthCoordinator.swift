//
//  AuthCoordinator.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright © 2018 Pavle Pesic. All rights reserved.
//

import Foundation

final class AuthCoordinator: BaseCoordinator {
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactory
    private let viewControllerFactory: ViewControllerFactory
    private let viewModelFactory: ViewModelFactory
    
    var onLoginSuccess: (() -> Void)?
    
    // MARK: - Init
    
    init(router: RouterProtocol,
         coordinatorFactory: CoordinatorFactory,
         viewControllerFactory: ViewControllerFactory,
         viewModelFactory: ViewModelFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
        self.viewModelFactory = viewModelFactory
    }
    
    // MARK: - Coordinator
    
    override func start() {
        runMagicLinkAuthFlow()
    }
    
    // MARK: - Private methods
    
    private func runMagicLinkAuthFlow(_ email: String? = nil) {
        let coordinator = coordinatorFactory.makeMagicLinkAuthCoordinator(router: router,
                                                                          coordinatorFactory: coordinatorFactory,
                                                                          viewControllerFactory: viewControllerFactory,
                                                                          viewModelFactory: viewModelFactory)
        coordinator.onSwitchToEmailLogin = { [unowned self, unowned coordinator] email in
            self.removeDependency(coordinator)
            self.runEmailAuthFlow(email)
        }
        coordinator.email = email
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runEmailAuthFlow(_ email: String? = nil) {
        let coordinator = coordinatorFactory.makeEmailAuthCoordinator(router: router,
                                                                      coordinatorFactory: coordinatorFactory,
                                                                      viewControllerFactory: viewControllerFactory,
                                                                      viewModelFactory: viewModelFactory)
        coordinator.onSwitchToMagicLinkLogin = { [unowned self, unowned coordinator] email in
            self.removeDependency(coordinator)
            self.runMagicLinkAuthFlow(email)
        }
        coordinator.onLoginSuccess = { [unowned self, unowned coordinator] in
            self.removeDependency(coordinator)
            onLoginSuccess?()
        }
        coordinator.email = email
        addDependency(coordinator)
        coordinator.start()
    }
}
