//
//  SerieTest.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 17/3/21.
//

import XCTest
@testable import OpenBankMarvel

class SerieTest: XCTestCase {
    func testSerieDecoding() {
        let serie: Character.Serie = openJsonFile(withName: "Serie")!
        verifyStandardFields(in: serie)
    }
}

private extension SerieTest {
    func verifyStandardFields(in serie: Character.Serie, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(serie.title,"Avengers: The Initiative (2007 - 2010)")
        XCTAssertEqual(serie.thumbnail.imgExtension, "jpg")
        XCTAssertNotNil(serie.thumbnail.path)
        XCTAssertEqual(serie.thumbnail.path, "http://i.annihil.us/u/prod/marvel/i/mg/5/a0/514a2ed3302f5")
    }
}
