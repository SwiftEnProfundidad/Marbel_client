//
//  Character.swift
//  OpenBankMarvel
//
//  Created by Juan Carlos Merlos Albarracin on 9/3/21.
//

import Foundation

//struct Character {
//    let id: ID<Character>
//    let name: String
//    let description: String
//    let thumbnail: FetchableValue<Thumbnail>
//    let comics: FetchableValue<Character.Comics>
//    let series: FetchableValue<Character.Series>
//    var comicsItems: FetchableValue<[Character.Comic]>
//    var seriesItems: FetchableValue<[Character.Serie]>
//}
//
//// MARK: - Decodable
//extension Character: Decodable {
//    private enum CodingKeys: String, CodingKey {
//        case id, name, description, thumbnail, comics, series
//        case comicsItems, seriesItems = "items"
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.value(forkey: .id)
//        name = try container.value(forkey: .name)
//        description = try container.value(forkey: .description)
//        thumbnail = try container.value(forkey: .thumbnail)
//        comics = try container.value(forkey: .comics)
//        series = try container.value(forkey: .series)
//        comicsItems = try container.value(forkey: .comicsItems)
//        seriesItems = try container.value(forkey: .seriesItems)
//    }
//}
//
//extension Character {
//    struct Thumbnail: Decodable {
//        let path: String
//        let imgExtension: String
//    }
//
//    struct Comics: Decodable {
//        let available: Int
//        let collectionURI: URL
//    }
//
//    struct Series: Decodable {
//        let available: Int
//        let collectionURI: URL
//    }
//
//    struct Comic: Decodable {
//        let title: String
//        let thumbnail: Thumbnail
//    }
//
//    struct Serie: Decodable {
//        let title: String
//        let thumbnail: Thumbnail
//    }
//}
//
//// MARK: - Thumbnail
//extension Character.Thumbnail {
//    private enum CodingKeys: String, CodingKey {
//        case path
//        case imgExtension = "extension"
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        path = try container.value(forkey: .path)
//        imgExtension = try container.value(forkey: .imgExtension)
//    }
//}
//
//// MARK: - Comics
//extension Character.Comics {
//    private enum CodingKeys: String, CodingKey {
//        case available, collectionURI
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        available = try container.value(forkey: .available)
//        collectionURI = try container.value(forkey: .collectionURI)
//    }
//}
//
//// MARK: - Series
//extension Character.Series {
//    private enum CodingKeys: String, CodingKey {
//        case available, collectionURI
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        available = try container.value(forkey: .available)
//        collectionURI = try container.value(forkey: .collectionURI)
//    }
//}
//
//// MARK: - Comic
//extension Character.Comic {
//    private enum CodingKeys: String, CodingKey {
//        case title, thumbnail
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        title = try container.value(forkey: .title)
//        thumbnail = try container.value(forkey: .thumbnail)
//    }
//}
//
//// MARK: - Serie
//extension Character.Serie {
//    private enum CodingKeys: String, CodingKey {
//        case title, thumbnail
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        title = try container.value(forkey: .title)
//        thumbnail = try container.value(forkey: .thumbnail)
//    }
//}


struct Character: Decodable {
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
        case name, thumbnail
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
