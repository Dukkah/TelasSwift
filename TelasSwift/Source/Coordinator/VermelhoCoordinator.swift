//
//  VermelhoCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

class VermelhoCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaVermelhaVC = TelaVermelhaViewController()
        navigationController.pushViewController(telaVermelhaVC, animated: false)
    }
}

