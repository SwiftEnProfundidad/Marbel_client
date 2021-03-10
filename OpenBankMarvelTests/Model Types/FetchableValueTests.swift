//
//  FetchableValueTests.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 10/3/21.
//

import XCTest
@testable import OpenBankMarvel

class FetchableValueTests: XCTestCase {
    func testCorruptedDataError() {
        let json = "{ \"collectionURI\": \"\" }"
            .data(using: .utf8)!
        XCTAssertThrowsError(try JSONDecoder().decode(TestStruct.self, from: json))
    }
}

private extension FetchableValueTests {
    struct TestStruct: Decodable {
        let testProperty: FetchableValue<Bool>
        
        enum Codingkeys: String, CodingKey {
            case collectionURI
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Codingkeys.self)
            testProperty = try container.decode(FetchableValue.self, forKey: .collectionURI)
        }
    }
}

