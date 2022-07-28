//
//  ViewCode.swift
//  Bankey
//
//  Created by Luiza Rodrigues de Almeida Avelino on 28/07/22.
//

import Foundation

protocol ViewCode {
    func setup()
    func style()
    func layout()
}

extension ViewCode {
    func setup(){
        style()
        layout()
    }
}
