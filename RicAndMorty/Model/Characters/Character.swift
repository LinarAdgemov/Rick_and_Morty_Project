//
//  Character.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 14.03.2023.
//

import Foundation

struct Character: Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: CharacterOriginLocation
    var location: CharacterLastLocation
    var image: String
    var episode: [String]
    var url: String
    var created: String
}
