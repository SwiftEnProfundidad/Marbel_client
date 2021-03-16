//
//  Helpers.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 10/3/21.
//

import XCTest
import Foundation
@testable import OpenBankMarvel

extension XCTestCase {
    func openJsonFile<Model: Decodable>(withName name: String) -> Model? {
        let bundle = Bundle(for: type(of: self))
        guard let url = bundle.url(forResource: name, withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            XCTFail("Could not load the data from the file")
            return nil
        }
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        guard let model = try? decoder.decode(Model.self, from: data) else {
            XCTFail("Could not decode the JSON data")
            return nil
        }
        return model
    }
}
