//
//  ViewModelFactory.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/26/22.
//

import Foundation

class ViewModelFactory {
    
    func instantiateLoginWithMagicLinkViewModel(_ email: String?,
                                                onMagicLinkSent: (() -> Void)?,
                                                onSwitchToEmailLogin: ((String?) -> Void)?) -> LoginWithMagicLinkViewModel {
        let vm = LoginWithMagicLinkViewModel(email: email,
                                             onMagicLinkSent: onMagicLinkSent,
                                             onSwitchToEmailLogin: onSwitchToEmailLogin)
        return vm
    }

    func instantiateMagicLinkConfirmationViewModel(_ onBackToLogin: (() -> Void)?) -> MagicLinkConfirmationViewModel {
        let vm = MagicLinkConfirmationViewModel(onBackToLogin: onBackToLogin)
        return vm
    }
    
    func instantiateLoginWithEmailViewModel(_ email: String?,
                                            onLoginSuccess: (() -> Void)?,
                                            onForgotPassword: (() -> Void)?,
                                            onSwitchToMagicLinkLogin: ((String?) -> Void)?) -> LoginWithEmailViewModel {
        let vm = LoginWithEmailViewModel(email: email,
                                         onLoginSuccess: onLoginSuccess,
                                         onForgotPassword: onForgotPassword,
                                         onSwitchToMagicLinkLogin: onSwitchToMagicLinkLogin)
        return vm
    }
    
    func instantiateForgotPasswordViewModel(_ showPasswordResetScreen: (() -> Void)?) -> ForgotPasswordViewModel {
        let vm = ForgotPasswordViewModel(showPasswordResetScreen: showPasswordResetScreen)
        return vm
    }
    
    func instantiateResetPasswordViewModel(_ onPasswordResetSuccess: (() -> Void)?) -> ResetPasswordViewModel {
        let vm = ResetPasswordViewModel(onPasswordResetSuccess: onPasswordResetSuccess)
        return vm
    }
}
