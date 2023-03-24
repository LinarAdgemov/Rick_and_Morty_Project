//
//  theEpisodesDescriptionViewController.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 21.12.2022.
//

import UIKit

class EpisodeDescriptionViewController: UIViewController {
    


    @IBOutlet weak var episodeDescriptionTableView: UITableView!
    
    
    var episode: Episode?
    var arrayEpisodeData: [EpisodeDescription] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let arrayEpisodeDataDescription = [EpisodeDescription(title: "Название эпизода", description: episode!.name), EpisodeDescription(title: "Серия №", description: String (episode!.id)), EpisodeDescription(title: "Дата выхода в эфир", description: episode!.air_date), EpisodeDescription(title: "Код эпизода", description: episode!.episode), EpisodeDescription(title: "URL Ссылка на эпизод", description: episode!.url), EpisodeDescription(title: "Время создания эпизода в базе данных", description: episode!.created)]
        
        episodeDescriptionTableView.reloadData()
        
        arrayEpisodeData = arrayEpisodeDataDescription
        
    }
  
}

struct EpisodeDescription  {
    var title: String
    var description: String
}

extension EpisodeDescriptionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEpisodeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EpisodeDescriptionTableViewCell.IDCell) as! EpisodeDescriptionTableViewCell
        
        cell.episodeDataTitle.text = arrayEpisodeData [indexPath.row].title
        cell.episodeDataDescription.text = arrayEpisodeData [indexPath.row].description
        return cell
    }
}


//extension TheEpisodesDescriptionViewController: UITableViewDataSource {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return arrayEpisodes.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrayEpisodes.count
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    
    
//}
    
    
    
    
    
    
    
//    @IBOutlet weak var nameEpisode: UILabel!
//    @IBOutlet weak var idEpisode: UILabel!
//    @IBOutlet weak var airDataEpisode: UILabel!
//    @IBOutlet weak var codeEpisode: UILabel!
//    @IBOutlet weak var urlEpisode: UILabel!
//    @IBOutlet weak var createdEpisode: UILabel!
//
//    var episode: EpisodesResults?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        nameEpisode.text = episode?.name
//        idEpisode.text = "\(episode?.id)"
//        airDataEpisode.text = episode?.air_date
//        codeEpisode.text = episode?.episode
//        urlEpisode.text = episode?.url
//        createdEpisode.text = episode?.created
//    }
//}

