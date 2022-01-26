//
//  Navigator.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/21/22.
//

import Foundation
import UIKit

protocol Navigator {
    func show(_ controller: UIViewController, in target: UIViewController)
    func showDetails(_ controller: UIViewController, in target: UIViewController)
    func dismiss(_ controller: UIViewController, animated: Bool, completion: (() -> Void)?)
    func embed(_ controller: UIViewController, in target: UIViewController, within view: UIView)
}

class ControllerNavigator: Navigator {
    func show(_ controller: UIViewController, in target: UIViewController) {
        target.show(controller, sender: target)
    }
    
    func showDetails(_ controller: UIViewController, in target: UIViewController) {
        target.showDetailViewController(controller, sender: target)
    }
    
    func dismiss(_ controller: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        if controller.presentingViewController != nil {
            controller.dismiss(animated: animated, completion: completion)
        } else if let navController = controller.navigationController {
            navController.popViewController(animated: animated)
            completion?()
        }
    }
    
    func embed(_ controller: UIViewController, in target: UIViewController, within view: UIView) {
        controller.willMove(toParent: target)
        target.addChild(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMove(toParent: target)
    }
}
