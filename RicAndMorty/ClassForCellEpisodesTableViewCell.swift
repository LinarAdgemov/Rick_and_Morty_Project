//
//  ClassForCellTableViewCell.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 30.11.2022.
//

import UIKit

class ClassForCellEpisodesTableViewCell: UITableViewCell {

    @IBOutlet weak var LableID: UILabel!
    @IBOutlet weak var LableName: UILabel!
    
    static let IDcell = "IDCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
