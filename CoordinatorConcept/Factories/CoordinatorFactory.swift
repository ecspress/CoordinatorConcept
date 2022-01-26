//
//  CoordinatorFactory.swift
//  iOSStyleguide
//
//  Created by Pavle Pesic on 3/14/18.
//  Copyright © 2018 Fabrika. All rights reserved.

class CoordinatorFactory {
    
    // MARK: - CoordinatorFactoryProtocol
    
    func makeAppCoordinator(router: RouterProtocol,
                            coordinatorFactory: CoordinatorFactory,
                            viewControllerFactory: ViewControllerFactory,
                            viewModelFactory: ViewModelFactory) -> AppCoordinator {
        let coordinator = AppCoordinator(router: router,
                                         coordinatorFactory: coordinatorFactory,
                                         viewControllerFactory: viewControllerFactory,
                                         viewModelFactory: viewModelFactory)
        return coordinator
    }
    
    func makeAuthCoordinator(router: RouterProtocol,
                             coordinatorFactory: CoordinatorFactory,
                             viewControllerFactory: ViewControllerFactory,
                             viewModelFactory: ViewModelFactory) -> AuthCoordinator {
        let coordinator = AuthCoordinator(router: router,
                                          coordinatorFactory: coordinatorFactory,
                                          viewControllerFactory: viewControllerFactory,
                                          viewModelFactory: viewModelFactory)
        return coordinator
    }
    
    func makeMagicLinkAuthCoordinator(router: RouterProtocol,
                                      coordinatorFactory: CoordinatorFactory,
                                      viewControllerFactory: ViewControllerFactory,
                                      viewModelFactory: ViewModelFactory) -> MagicLinkAuthCoordinator {
        let coordinator = MagicLinkAuthCoordinator(router: router,
                                                   coordinatorFactory: coordinatorFactory,
                                                   viewControllerFactory: viewControllerFactory,
                                                   viewModelFactory: viewModelFactory)
        return coordinator
    }
    
    func makeEmailAuthCoordinator(router: RouterProtocol,
                                  coordinatorFactory: CoordinatorFactory,
                                  viewControllerFactory: ViewControllerFactory,
                                  viewModelFactory: ViewModelFactory) -> EmailAuthCoordinator {
        let coordinator = EmailAuthCoordinator(router: router,
                                               coordinatorFactory: coordinatorFactory,
                                               viewControllerFactory: viewControllerFactory,
                                               viewModelFactory: viewModelFactory)
        return coordinator
    }

//    func makeChangePasswordCoordinatorBox(router: RouterProtocol, viewControllerFactory: ViewControllerFactory) -> ChangePasswordCoordinator {
//        let coordinator = ChangePasswordCoordinator(router: router, viewControllerFactory: viewControllerFactory)
//        return coordinator
//    }
//
//    func makeMainCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> MainCoordinator {
//        let coordinator = MainCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
//        return coordinator
//    }
//
//    func makeWalktroughCoordinatorBox(router: RouterProtocol, viewControllerFactory: ViewControllerFactory) -> WalktroughCoordinator {
//        let coordinator = WalktroughCoordinator(router: router, viewControllerFactory: viewControllerFactory)
//        return coordinator
//    }
//
//    func makeProfileCoordinatorBox(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) -> ProfileCoordinator {
//        let coordinator = ProfileCoordinator(router: router, coordinatorFactory: coordinatorFactory, viewControllerFactory: viewControllerFactory)
//        return coordinator
//    }
}
