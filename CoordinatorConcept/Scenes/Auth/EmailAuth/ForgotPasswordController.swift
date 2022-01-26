//
//  ForgotPasswordController.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

class ForgotPasswordController: UIViewController, StoryBoarded {
    
    var viewModel: ForgotPasswordViewModel?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction private func showPasswordResetScreen(_ sender: UIButton) {
        viewModel?.showPasswordResetScreen?()
    }
}
