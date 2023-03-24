//
//  ForParseCharacters.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 18.12.2022.
//

import Foundation

class Networkservice {
    
    // MARK: - Метод для получения данных о персажах

    func getCharacter (completed: @escaping ([Character]) -> ()) {
        
        let characterUrl: String = "https://rickandmortyapi.com/api/character"
        guard let charUrl = URL (string: characterUrl) else {return}
        URLSession.shared.dataTask(with: charUrl) { (data,response,error) in
            
            guard let data = data else {return}
            
            do {
                let characterData = try JSONDecoder().decode(CharacterList.self, from: data)
                DispatchQueue.main.async {
                    completed (characterData.results)
                }
            } catch let error {
                print ("Error: ", error)
            }
        }.resume()
    }
    
    // MARK: - Метод для получения данных эпизодов

    
    func getEpisode (completed: @escaping ([Episode]) -> ()) {
        
        let episodesUrl: String = "https://rickandmortyapi.com/api/episode"
        guard let epUrl = URL (string: episodesUrl) else {return}
        URLSession.shared.dataTask(with: epUrl)  { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let episodData = try JSONDecoder().decode(EpisodeList.self, from: data)
                DispatchQueue.main.async {
                    completed (episodData.results)
                }
            } catch let error {
                print ("Error: ", error)
            }
        }.resume()
    }
}



