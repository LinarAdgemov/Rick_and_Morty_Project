//
//  EpisodeInfo.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 14.03.2023.
//

import Foundation

struct EpisodeInfo: Codable {
    var count: Int
    var pages: Int
    var next: String
    var prev: String?
}
