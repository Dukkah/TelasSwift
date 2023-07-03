//
//  TelaVerde.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 03/07/23.
//

import Foundation

import UIKit

protocol TelaVerdeViewDelegate: AnyObject {
    func goToAzul()
    func goToVermelho()
}

class TelaVerdeView: UIView {
    weak var delegate: TelaVerdeViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .green
        
        let goToAzulButton = UIButton(type: .system)
        goToAzulButton.setTitle("Voltar para tela azul", for: .normal)
        goToAzulButton.addTarget(self, action: #selector(goToAzul), for: .touchUpInside)
        addSubview(goToAzulButton)
        goToAzulButton.translatesAutoresizingMaskIntoConstraints = false
        goToAzulButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        goToAzulButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50).isActive = true
        
        let goToVermelhoButton = UIButton(type: .system)
        goToVermelhoButton.setTitle("Ir para a tela vermelha", for: .normal)
        goToVermelhoButton.addTarget(self, action: #selector(goToVermelho), for: .touchUpInside)
        addSubview(goToVermelhoButton)
        goToVermelhoButton.translatesAutoresizingMaskIntoConstraints = false
        goToVermelhoButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        goToVermelhoButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50).isActive = true
    }
    
    @objc private func goToAzul() {
        delegate?.goToAzul()
    }
    
    @objc private func goToVermelho() {
        delegate?.goToVermelho()
    }
}

