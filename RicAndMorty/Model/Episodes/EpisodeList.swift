//
//  EpisodeList.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 14.03.2023.
//

import Foundation

struct EpisodeList: Codable {
    var info : EpisodeInfo
    var results : [Episode]
}
