//
//  LoginWithEmail.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

class LoginWithEmailController: UIViewController, StoryBoarded {
    
    @IBOutlet private weak var emailField: UITextField!
    
    var viewModel: LoginWithEmailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.text = viewModel?.email
    }
    
    @IBAction private func onLoginSuccess(_ sender: UIButton) {
        viewModel?.onLoginSuccess?()
    }
    
    @IBAction private func switchToMagicLinkLogin(_ sender: UIButton) {
        let email = emailField.text
        viewModel?.onSwitchToMagicLinkLogin?(email)
    }
    
    @IBAction private func onForgotPassword(_ sender: UIButton) {
        viewModel?.onForgotPassword?()
    }

}
