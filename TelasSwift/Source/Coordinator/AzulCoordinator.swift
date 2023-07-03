//
//  AzulCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//


import Foundation

import UIKit

class AzulCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaAzulVC = TelaAzulViewController()
        navigationController.pushViewController(telaAzulVC, animated: false)
    }
}
