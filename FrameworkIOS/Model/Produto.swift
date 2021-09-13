//
//  Produto.swift
//  FrameworkIOS
//
//  Created by Renan on 12/09/21.
//

import Foundation

struct Produto: Codable, Equatable {
    
    var nomeProduto: String
    var precoFruta: Float
    var imagemFruta: String
    
}

extension Produto {
    // MARK: Equatable
    static func == (lhs: Produto, rhs: Produto) -> Bool {
        return lhs.nomeProduto == rhs.nomeProduto &&
            lhs.precoFruta == rhs.precoFruta &&
            lhs.imagemFruta == rhs.imagemFruta
    }
    
    func displayPrice() -> String {
        return String.init(format: "$ %.02f ", precoFruta)
    }
    
}
