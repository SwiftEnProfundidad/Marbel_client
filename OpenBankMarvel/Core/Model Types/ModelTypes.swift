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

//struct FetchableValue<T> {
//    let url: URL
//    let value: RemoteValue<T>
//    
//    indirect enum RemoteValue<T> {
//        case notFetched
//        case fetched(value: T)
//    }
//    var fetchedValue: T? {
//        if case let .fetched(value) = value {
//            return value
//        }
//        return nil
//    }
//}
//
//// MARK: - FetchableValue Decodable - DSL
//extension FetchableValue: Decodable {
//    init(from decoder: Decoder) throws {
//        let template = try decoder.singleValueContainer().decode(String.self)
//        guard let url = URL(string: template) else {
//            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: ""))
//        }
//        self.url = url
//        value = .notFetched
//    }
//}

