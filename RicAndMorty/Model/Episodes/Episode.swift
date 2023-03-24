//
//  Episode.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 14.03.2023.
//

import Foundation

struct Episode: Codable {
    var id: Int
    var name: String
    var air_date: String
    var episode: String
    var characters: [String]
    var url: String
    var created: String
}
