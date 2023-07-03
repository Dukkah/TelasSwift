//
//  VerdeCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

class VerdeCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaVerdeVC = TelaVerdeViewController()
        navigationController.pushViewController(telaVerdeVC, animated: false)
    }
}

