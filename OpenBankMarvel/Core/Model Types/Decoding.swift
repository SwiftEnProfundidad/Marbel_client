//
//  Decoding.swift
//  OpenBankMarvel
//
//  Created by Juan Carlos Merlos Albarracin on 9/3/21.
//

import Foundation

extension URL {
    init?(template: String) {
        let regex = "\\{.*\\}"
        let cleanedString = template.replacingOccurrences(of: regex, with: "", options: .regularExpression)
        self.init(string: cleanedString)
    }
}

extension KeyedDecodingContainer {
    func value<T>(forkey key: KeyedDecodingContainer.Key) throws -> T where T: Decodable {
        return try decode(T.self, forKey: key)
    }
}
