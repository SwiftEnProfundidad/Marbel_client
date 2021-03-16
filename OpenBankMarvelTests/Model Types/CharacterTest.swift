//
//  CharactersTest.swift
//  OpenBankMarvelTests
//
//  Created by Juan Carlos Merlos Albarracin on 10/3/21.
//

import XCTest
@testable import OpenBankMarvel

class CharacterTest: XCTestCase {
    func testCharacterDecoding() {
        let character: Character = openJsonFile(withName: "Character")!
        verifyStandardFields(in: character)
    }
}

private extension CharacterTest {
    func verifyStandardFields(in character: Character, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(character.id.value, 1011334)
        XCTAssertEqual(character.name, "3-D Man")
        XCTAssertEqual(character.description, "")
        XCTAssertEqual(character.comics.available, 12)
        XCTAssertEqual(character.series.available, 3)
        XCTAssertEqual(character.thumbnail.imgExtension, "jpg")
        XCTAssertEqual(character.thumbnail.path, "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784")
        XCTAssertEqual(character.comicsCollectionUrl.absoluteString, "http://gateway.marvel.com/v1/public/characters/1011334/comics")
        XCTAssertEqual(character.seriesCollectionUrl.absoluteString, "http://gateway.marvel.com/v1/public/characters/1011334/series")
        XCTAssertEqual(character.comicsItems.count, 0)
        XCTAssertEqual(character.seriesItems.count, 0)
    }
}

