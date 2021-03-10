//
//  URLTests.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 9/3/21.
//

import XCTest
@testable import OpenBankMarvel

class URLTests: XCTestCase {
    func testInitFromTemplate() {
        let template = "http://gateway.marvel.com/v1/public/characters{/1011334}{/comics}"
        guard let url = URL(template: template) else {
            XCTFail("The initialization failed")
            return
        }
        XCTAssertEqual(url.absoluteString, "http://gateway.marvel.com/v1/public/characters")
    }
}
