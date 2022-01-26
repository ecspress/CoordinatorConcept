//
//  File.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/26/22.
//

import Foundation

struct LoginWithMagicLinkViewModel {
    var email: String?
    
    var onMagicLinkSent: (() -> Void)?
    var onSwitchToEmailLogin: ((String?) -> Void)?
}
