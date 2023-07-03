//
//  TelaAzulView.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation
import UIKit

protocol TelaAzulViewDelegate: AnyObject {
    func goToVerde()
}

class TelaAzulView: UIView {
    weak var delegate: TelaAzulViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .blue
        
        let goToVerdeButton = UIButton(type: .system)
        goToVerdeButton.setTitle("Ir para a tela verde", for: .normal)
        goToVerdeButton.addTarget(self, action: #selector(goToVerde), for: .touchUpInside)
        addSubview(goToVerdeButton)
        goToVerdeButton.translatesAutoresizingMaskIntoConstraints = false
        goToVerdeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        goToVerdeButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    @objc private func goToVerde() {
        delegate?.goToVerde()
    }
}

