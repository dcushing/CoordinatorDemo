//
//  ProfileCoordinator.swift
//  CoordinatorDemo
//
//

import UIKit

class ProfileCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProfileViewController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
