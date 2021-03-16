//
//  ModelTypes.swift
//  OpenBankMarvel
//
//  Created by Juan Carlos Merlos Albarracin on 9/3/21.
//

import Foundation

struct ID<T> {
    let value: Int
}

// MARK: - ID Decodable - DSL
extension ID: Decodable {
    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer().decode(Int.self)
        self.init(value: value)
    }
}


