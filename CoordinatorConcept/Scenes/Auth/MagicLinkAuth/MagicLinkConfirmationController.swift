//
//  MagicLinkConfirmationController.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

class MagicLinkConfirmationController: UIViewController, StoryBoarded {
    
    var viewModel: MagicLinkConfirmationViewModel?
    
    @IBAction private func backToLogin(_ sender: UIButton) {
        viewModel?.onBackToLogin?()
    }
}
