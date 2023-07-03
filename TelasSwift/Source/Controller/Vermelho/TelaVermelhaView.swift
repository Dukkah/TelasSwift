//
//  TelaVermelha.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

protocol TelaVermelhaViewDelegate: AnyObject {
    func goToAzul()
    func goToVerde()
}

class TelaVermelhaView: UIView {
    weak var delegate: TelaVermelhaViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .red
        
        let goToAzulButton = UIButton(type: .system)
        goToAzulButton.setTitle("Ir para a tela azul", for: .normal)
        goToAzulButton.addTarget(self, action: #selector(goToAzul), for: .touchUpInside)
        addSubview(goToAzulButton)
        goToAzulButton.translatesAutoresizingMaskIntoConstraints = false
        goToAzulButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        goToAzulButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50).isActive = true
        
        let goToVerdeButton = UIButton(type: .system)
        goToVerdeButton.setTitle("Voltar para a tela verde", for: .normal)
        goToVerdeButton.addTarget(self, action: #selector(goToVerde), for: .touchUpInside)
        addSubview(goToVerdeButton)
        goToVerdeButton.translatesAutoresizingMaskIntoConstraints = false
        goToVerdeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        goToVerdeButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50).isActive = true
    }
    
    @objc private func goToAzul() {
        delegate?.goToAzul()
    }
    
    @objc private func goToVerde() {
        delegate?.goToVerde()
    }
}






