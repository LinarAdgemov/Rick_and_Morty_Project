//
//  EpisodeDescriptionTableViewCell.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 20.03.2023.
//

import UIKit

class EpisodeDescriptionTableViewCell: UITableViewCell {


    @IBOutlet weak var episodeDataTitle: UILabel!
    @IBOutlet weak var episodeDataDescription: UILabel!
    
    
    static let IDCell = "IDCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//@IBOutlet weak var episodeDataTitle: UILabel!
//@IBOutlet weak var episodeDataDescription: UILabel!
