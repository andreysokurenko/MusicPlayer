//
//  SearchResponseModel.swift
//  MusicPlayer
//
//  Created by Andrey on 22.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
    var previewUrl: String?
}
