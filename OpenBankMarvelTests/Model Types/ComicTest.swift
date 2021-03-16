//
//  ComicTest.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 17/3/21.
//

import XCTest
@testable import OpenBankMarvel

class ComicTest: XCTestCase {
    func testComicDecoding() {
        let comic: Character.Comic = openJsonFile(withName: "Comic")!
        verifyStandardFields(in: comic)
    }
}

private extension ComicTest {
    func verifyStandardFields(in comic: Character.Comic, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(comic.title, "Black Panther (2005) #4")
        XCTAssertEqual(comic.thumbnail.imgExtension, "jpg")
        XCTAssertNotNil(comic.thumbnail.path)
        XCTAssertEqual(comic.thumbnail.path, "http://i.annihil.us/u/prod/marvel/i/mg/c/f0/5745c00112846")
    }
}

