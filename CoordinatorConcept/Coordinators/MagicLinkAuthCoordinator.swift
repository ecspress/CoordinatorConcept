//
//  MagicLinkAuthCoordinator.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import Foundation
import UIKit

class MagicLinkAuthCoordinator: BaseCoordinator {
    
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactory
    private let viewControllerFactory: ViewControllerFactory
    private let viewModelFactory: ViewModelFactory
    
    var email: String?
    var onSwitchToEmailLogin: ((String?) -> Void)?
    
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
        showLoginWithMagicLinkController(email)
    }
    
    private func showLoginWithMagicLinkController(_ email: String?) {
        let controller = viewControllerFactory.instantiateLoginWithMagicLinkController()
        
        let onMagicLinkSent = { [unowned self] in
            self.showMagicLinkConfirmationController()
        }
        
        let vm = viewModelFactory.instantiateLoginWithMagicLinkViewModel(email,
                                                                         onMagicLinkSent: onMagicLinkSent,
                                                                         onSwitchToEmailLogin: onSwitchToEmailLogin)
        controller.viewModel = vm
        router.setRootModule(controller, hideBar: true)
    }
    
    private func showMagicLinkConfirmationController() {
        let controller = viewControllerFactory.instantiateMagicLinkConfirmationController()
        let vm = viewModelFactory.instantiateMagicLinkConfirmationViewModel { [unowned self] in
            self.router.popModule()
        }
        controller.viewModel = vm
        router.push(controller)
    }
}
