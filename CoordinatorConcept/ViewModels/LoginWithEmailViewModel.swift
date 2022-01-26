//
//  File3.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/26/22.
//

import Foundation

struct LoginWithEmailViewModel {
    var email: String?
    
    var onLoginSuccess: (() -> Void)?
    var onForgotPassword: (() -> Void)?
    var onSwitchToMagicLinkLogin: ((String?) -> Void)?
}
