//
//  ForParseCharacters.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 18.12.2022.
//

import Foundation

// MARK: - Структуры для парсинга персонажей

struct CharactersOrigin: Codable {
    var name: String
    var url: String
}

struct CharactersLocation: Codable {
    var name: String
    var url: String
}

struct CharactersInfo: Codable {
    var count: Int
    var pages: Int
    var next: String
    var prev: String?
}

struct CharactersResults: Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: CharactersOrigin
    var location: CharactersLocation
    var image: String
    var episode: [String]
    var url: String
    var created: String
}

struct CharactersMain: Codable {
    var info: CharactersInfo
    var results: [CharactersResults]
}

// MARK: - Метод для получения данных о персажах

var arrayCharacters: [CharactersResults] = []
var charRes: CharactersResults!

func requestCharacters (completed: @escaping () -> ()) {
    
    let characterUrl: String = "https://rickandmortyapi.com/api/character"
    guard let charUrl = URL (string: characterUrl) else {return}
    URLSession.shared.dataTask(with: charUrl) { (data,response,error) in
        
        guard let data = data else {return}
        
        do {
            let characterData = try JSONDecoder().decode(CharactersMain.self, from: data)
            arrayCharacters = characterData.results
            DispatchQueue.main.async {
                completed ()
            }
        } catch let error {
            print ("Error: ", error)
        }
    }.resume()
}




//var arrRes: [CharactersResults] = []
//
//func requestCharacters () {
//
//    let charactersUrl: String = "https://rickandmortyapi.com/api/character"
//    guard let CharUrl = URL (string: charactersUrl) else {return}
//    URLSession.shared.dataTask(with: CharUrl) { (data, response, error) in
//
//        guard let data = data else {return}
//
//        do {
//            let characterData = try JSONDecoder().decode(CharactersMain.self, from: data)
//            arrRes = characterData.results
//            print (characterData.results)
//        } catch let error {
//            print ("Error: ", error)
//        }
//    }.resume()
//}
