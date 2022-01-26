//
//  LaunchInstructor.swift
//  iOSStyleguide
//
//  Created by Pavle Pesic on 3/14/18.
//  Copyright © 2018 Fabrika. All rights reserved.
//

import Foundation

fileprivate var onboardingWasShown = false
fileprivate var isAuthorized = false

enum LaunchInstructor {
    
    case main
    case auth
    case onboarding
    
    // MARK: - Public methods
    
    static func configure( tutorialWasShown: Bool = onboardingWasShown,
                           isAuthorized: Bool = isAuthorized) -> LaunchInstructor {
        
        switch (tutorialWasShown, isAuthorized) {
        case (_, true): return .main
        case (_, false): return .auth
//        case (false, _): return .onboarding
        }
    }
}
