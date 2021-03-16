//
//  Character.swift
//  OpenBankMarvel
//
//  Created by Juan Carlos Merlos Albarracin on 9/3/21.
//

import Foundation

struct Character: Decodable {
    let id: ID<Character>
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comics: Comics
    let series: Series
    var comicsItems: [Comic] = []
    var seriesItems: [Serie] = []

    var comicsCollectionUrl: URL {
        return comics.collectionURI
    }

    var seriesCollectionUrl: URL {
        return series.collectionURI
    }

    private enum CodingKeys: String, CodingKey {
        case id, name, thumbnail
        case description
        case comics
        case series
    }
}

extension Character {
    struct Thumbnail: Decodable {
        let path: String
        let imgExtension: String
    }

    struct Comics: Decodable {
        let available: Int
        let collectionURI: URL
    }

    struct Series: Decodable {
        let available: Int
        let collectionURI: URL
    }

    struct Comic: Decodable {
        let title: String
        let thumbnail: Thumbnail
    }

    struct Serie: Decodable {
        let title: String
        let thumbnail: Thumbnail
    }
}

// MARK: - Thumbnail
extension Character.Thumbnail {
    private enum CodingKeys: String, CodingKey {
        case path
        case imgExtension = "extension"
    }
}
