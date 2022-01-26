//
//  EmailAuthCoordinator.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import Foundation

class EmailAuthCoordinator: BaseCoordinator {
    
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactory
    private let viewControllerFactory: ViewControllerFactory
    private let viewModelFactory: ViewModelFactory
    
    var email: String?
    var onSwitchToMagicLinkLogin: ((String?) -> Void)?
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
    
    //forgot Password and Reset Password have back
    
    // MARK: - Coordinator
    
    override func start() {
        showLoginWithEmailController(email)
    }
    
    private func showLoginWithEmailController(_ email: String?) {
        let controller = viewControllerFactory.instantiateLoginWithEmailController()
        
        let onForgotPassword = { [unowned self] in
            self.showForgotPasswordController()
        }
        
        let vm = viewModelFactory.instantiateLoginWithEmailViewModel(email,
                                                                     onLoginSuccess: onLoginSuccess,
                                                                     onForgotPassword: onForgotPassword,
                                                                     onSwitchToMagicLinkLogin: onSwitchToMagicLinkLogin)
        controller.viewModel = vm
        router.setRootModule(controller, hideBar: true)
    }
    
    private func showForgotPasswordController() {
        let controller = viewControllerFactory.instantiateForgotPasswordController()
        let vm = viewModelFactory.instantiateForgotPasswordViewModel { [unowned self] in
            self.showPasswordResetController()
        }
        controller.viewModel = vm
        router.push(controller)
    }
    
    private func showPasswordResetController() {
        let controller = viewControllerFactory.instantiateResetPasswordController()
        let vm = viewModelFactory.instantiateResetPasswordViewModel { [unowned self] in
            self.router.popToRootModule(animated: true)
        }
        controller.viewModel = vm
        router.push(controller)
    }
}
