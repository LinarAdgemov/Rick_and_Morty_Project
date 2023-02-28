//
//  theEpisodesDescriptionViewController.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 21.12.2022.
//

import UIKit

class TheEpisodesDescriptionViewController: UIViewController {

    
    @IBOutlet weak var nameEpisode: UILabel!
    @IBOutlet weak var idEpisode: UILabel!
    @IBOutlet weak var airDataEpisode: UILabel!
    @IBOutlet weak var codeEpisode: UILabel!
    @IBOutlet weak var urlEpisode: UILabel!
    @IBOutlet weak var createdEpisode: UILabel!
    
    var episode: EpisodesResults?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameEpisode.text = episode?.name
        idEpisode.text = "\(episode?.id)"
        airDataEpisode.text = episode?.air_date
        codeEpisode.text = episode?.episode
        urlEpisode.text = episode?.url
        createdEpisode.text = episode?.created
    }
}

