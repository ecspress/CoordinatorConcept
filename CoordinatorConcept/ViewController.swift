//
//  ViewController.swift
//  CoordinatorConcept
//
//  Created by Faisal Saleh on 1/20/22.
//

import UIKit

var appCoordinator: AppCoordinator!

class ViewController: UIViewController {
    
    @IBOutlet weak var isUserLoggedInSwitch: UISwitch!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var roomField: UITextField!
    @IBOutlet weak var userRoomField: UITextField!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        let router = Router(rootController: self.navigationController!)
        let coordinatorFactory = CoordinatorFactory()
        let viewControllerFactory = ViewControllerFactory()
        let viewModelFactory = ViewModelFactory()
        appCoordinator = coordinatorFactory.makeAppCoordinator(router: router,
                                                               coordinatorFactory: coordinatorFactory,
                                                               viewControllerFactory: viewControllerFactory,
                                                               viewModelFactory: viewModelFactory)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let router = Router(rootController: self.navigationController!)
        let coordinatorFactory = CoordinatorFactory()
        let viewControllerFactory = ViewControllerFactory()
        let viewModelFactory = ViewModelFactory()
        appCoordinator = coordinatorFactory.makeAppCoordinator(router: router,
                                                               coordinatorFactory: coordinatorFactory,
                                                               viewControllerFactory: viewControllerFactory,
                                                               viewModelFactory: viewModelFactory)
    }

    @IBAction func onRegularAppLaunch(_ sender: UIButton) {
        let isUserLoggedIn = isUserLoggedInSwitch.isOn
        print("regular app launch with a user logged in already as -> ", isUserLoggedIn)
        
        appCoordinator.launchInstructor = LaunchInstructor.configure(tutorialWasShown: false,
                                                                     isAuthorized: isUserLoggedIn)
        appCoordinator.start(with: nil)
    }
    
    @IBAction func onMagicLinkWithUser(_ sender: UIButton) {
        let isUserLoggedIn = isUserLoggedInSwitch.isOn
        let newUser = userNameField.text!
        print("logging a new user \(String(describing: newUser)) with a user logged in already as -> ", isUserLoggedIn)
        
//        appCoordinator.onMagicLinkWithUser(isUserLoggedIn, newUser: newUser)
    }
        
    @IBAction func roomInvite(_ sender: UIButton) {
        let isUserLoggedIn = isUserLoggedInSwitch.isOn
        let room = roomField.text!
        print("opening a room invite for room \(String(describing: room)) with a user logged in already as -> ", isUserLoggedIn)
        
//        appCoordinator.roomInvite(isUserLoggedIn, inviteFor: room)
    }

    @IBAction func roomInviteForUser(_ sender: UIButton) {
        let isUserLoggedIn = isUserLoggedInSwitch.isOn
        let room = userRoomField.text!
        print("opening a room invite for room \(String(describing: room)) for a specific user with a user logged in already as -> ", isUserLoggedIn)
        
//        appCoordinator.roomInviteForUser(isUserLoggedIn, inviteFor: room, forUser: "\(Date().timeIntervalSince1970)")
    }
}
