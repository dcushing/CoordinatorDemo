//
//  HomeCoordinator.swift
//  CoordinatorDemo
//

import UIKit

class HomeCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
