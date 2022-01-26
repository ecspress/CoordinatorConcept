//
//  LoginWithMagicLinkController.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

class LoginWithMagicLinkController: UIViewController, StoryBoarded {
    
    @IBOutlet private weak var emailField: UITextField!
    
    var viewModel: LoginWithMagicLinkViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.text = viewModel?.email
    }
    
    @IBAction private func showMagicLinkSentConfirmation(_ sender: UIButton) {
        viewModel?.onMagicLinkSent?()
    }
    
    @IBAction private func switchToEmailLogin(_ sender: UIButton) {
        let email = emailField.text
        viewModel?.onSwitchToEmailLogin?(email)
    }
}
