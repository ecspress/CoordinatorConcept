//
//  ResetPasswordController.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

class ResetPasswordController: UIViewController, StoryBoarded {
    
    var viewModel: ResetPasswordViewModel?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func onPasswordResetSuccess(_ sender: UIButton) {
        viewModel?.onPasswordResetSuccess?()
    }

}
