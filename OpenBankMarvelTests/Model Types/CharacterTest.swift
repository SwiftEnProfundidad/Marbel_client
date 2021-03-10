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
//        guard case let .fetched(thumbnail) = character.thumbnail.value else {
//            XCTFail("There are no thumbnail presenter")
//            return
//        }
//        XCTAssertEqual(thumbnail.imgExtension, "png")
//        XCTAssertEqual(thumbnail.path, "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784")
//        
//        guard case let .fetched(comics) = character.comics.value else {
//            XCTFail("There are no comics presenter")
//            return
//        }
//        XCTAssertEqual(comics.available, 12)
//        XCTAssertEqual(comics.collectionURI, URL(string: "http://gateway.marvel.com/v1/public/characters/1011334/comics"))
//        
//        guard case let .fetched(series) = character.series.value else {
//            XCTFail("There are no series presenter")
//            return
//        }
//        XCTAssertEqual(series.available, 12)
//        XCTAssertEqual(series.collectionURI, URL(string: "http://gateway.marvel.com/v1/public/characters/1011334/series"))
    }
}

private extension CharacterTest {
    func verifyStandardFields(in character: Character, file: StaticString = #file, line: UInt = #line) {
//      XCTAssertEqual(character.id.value, 1011334)
        XCTAssertEqual(character.name, "3-D Man")
        XCTAssertEqual(character.description, "")
        XCTAssertEqual(character.comicsCollectionUrl, URL(string: "http://gateway.marvel.com/v1/public/characters/1011334/comics"))
        XCTAssertEqual(character.seriesCollectionUrl, URL(string: "http://gateway.marvel.com/v1/public/characters/1011334/series"))
        XCTAssertEqual(character.comics.available, 12)
        XCTAssertEqual(character.series.available, 3)
        XCTAssertEqual(character.thumbnail.imgExtension, "jpg")
        XCTAssertEqual(character.thumbnail.path, "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784")

//        verify(url: "http://gateway.marvel.com/v1/public/characters/1011334/comics", in: character.comics, file: file, line: line)

    }
}
