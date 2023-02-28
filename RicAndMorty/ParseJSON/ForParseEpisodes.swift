//
//  StructsForParse.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 28.11.2022.
//

import Foundation

// MARK: - Структуры для парсинга эпизодов

struct EpisodesInfo: Codable {
    var count: Int
    var pages: Int
    var next: String
    var prev: String?
}

struct EpisodesResults: Codable {
    var id: Int
    var name: String
    var air_date: String
    var episode: String
    var characters: [String]
    var url: String
    var created: String
}

struct EpisodesMain: Codable {
    var info : EpisodesInfo
    var results : [EpisodesResults]
}

// MARK: - Метод для получения данных об эпизодах

var arrayEpisodes: [EpisodesResults] = []

func requestEpisodes (completed: @escaping () -> ()) {
    
    let episodesUrl: String = "https://rickandmortyapi.com/api/episode"
    guard let epUrl = URL (string: episodesUrl) else {return}
    URLSession.shared.dataTask(with: epUrl)  { (data, response, error) in
        
        guard let data = data else { return }
        
        do {
            let episodData = try JSONDecoder().decode(EpisodesMain.self, from: data)
            arrayEpisodes = episodData.results
            DispatchQueue.main.async {
                completed ()
            }
        } catch let error {
            print ("Error: ", error)
        }
    }.resume()
}
