//
//  elaAzulViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

class TelaAzulViewController: UIViewController, TelaAzulViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let azulView = TelaAzulView(frame: view.bounds)
        azulView.delegate = self
        view.addSubview(azulView)
    }
    
    func goToVerde() {
        let telaVerdeVC = TelaVerdeViewController()
        navigationController?.pushViewController(telaVerdeVC, animated: true)
    }
}
