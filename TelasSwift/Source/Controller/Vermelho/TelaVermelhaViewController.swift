//
//  TelaVermelhaViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

class TelaVermelhaViewController: UIViewController, TelaVermelhaViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vermelhaView = TelaVermelhaView(frame: view.bounds)
        vermelhaView.delegate = self
        view.addSubview(vermelhaView)
    }
    
    func goToAzul() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func goToVerde() {
        navigationController?.popViewController(animated: true)
    }
}
