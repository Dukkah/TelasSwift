//
//  TelaVerdeViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController, TelaVerdeViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let verdeView = TelaVerdeView(frame: view.bounds)
        verdeView.delegate = self
        view.addSubview(verdeView)
    }
    
    func goToAzul() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func goToVermelho() {
        let telaVermelhaVC = TelaVermelhaViewController()
        navigationController?.pushViewController(telaVermelhaVC, animated: true)
    }
}



