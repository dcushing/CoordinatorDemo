//
//  MainTabBarController.swift
//  CoordinatorDemo
//

import UIKit

class MainTabBarController: UITabBarController {
    // This class sets the navigation for the ViewControllers that should be in the tab bar
    
    let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
    let profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // start the relevant coordinators so that we can add them to the tab bar navigation when the app starts
        homeCoordinator.start()
        profileCoordinator.start()

        // add the coordinators as tabs
        viewControllers = [
            homeCoordinator.navigationController,
            profileCoordinator.navigationController
        ]
    }
    

}
