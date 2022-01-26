//
//  ControllerFactory.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/21/22.
//

import Foundation
import UIKit

class ViewControllerFactory {
    
    func instantiateLoginWithMagicLinkController() -> LoginWithMagicLinkController {
        let controller = LoginWithMagicLinkController.instantiate()
        return controller
    }

    func instantiateMagicLinkConfirmationController() -> MagicLinkConfirmationController {
        let controller = MagicLinkConfirmationController.instantiate()
        return controller
    }
    
    func instantiateLoginWithEmailController() -> LoginWithEmailController {
        let controller = LoginWithEmailController.instantiate()
        return controller
    }
    
    func instantiateForgotPasswordController() -> ForgotPasswordController {
        let controller = ForgotPasswordController.instantiate()
        return controller
    }
    
    func instantiateResetPasswordController() -> ResetPasswordController {
        let controller = ResetPasswordController.instantiate()
        return controller
    }
//
//    func instantiateChangePasswordStep1ViewController() -> ChangePasswordStep1ViewController {
//        let changePasswordStep1VC = UIStoryboard.changePassword.instantiateViewController(withIdentifier: "ChangePasswordStep1ViewController") as! ChangePasswordStep1ViewController
//        changePasswordStep1VC.viewModel = ChangePasswordStep1ViewModel()
//        return changePasswordStep1VC
//    }
//
//    func instantiateChangePasswordStep2ViewController() -> ChangePasswordStep2ViewController {
//        let changePasswordStep2VC = UIStoryboard.changePassword.instantiateViewController(withIdentifier: "ChangePasswordStep2ViewController") as! ChangePasswordStep2ViewController
//        changePasswordStep2VC.viewModel = ChangePasswordStep2ViewModel()
//        return changePasswordStep2VC
//    }
//
//    func instantiateWalktroughViewController() -> WalktroughViewController {
//        let walktroughVC = UIStoryboard.walktrough.instantiateViewController(withIdentifier: "WalktroughViewController") as! WalktroughViewController
//        walktroughVC.viewModel = WalktroughViewModel()
//        return walktroughVC
//    }
//
//    func instantiateAViewController() -> AViewController {
//        let aVC = UIStoryboard.first.instantiateViewController(withIdentifier: "AViewController") as! AViewController
//        aVC.viewModel = AViewModel()
//        return aVC
//    }
//
//    func instantiateBViewController() -> BViewController {
//        let bVC = UIStoryboard.first.instantiateViewController(withIdentifier: "BViewController") as! BViewController
//        bVC.viewModel = BViewModel()
//        return bVC
//    }
//
//    func instantiateProfileViewController() -> ProfileViewController {
//        let profileVC = UIStoryboard.profile.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
//        profileVC.viewModel = ProfileViewModel()
//        return profileVC
//    }
    
}
