//
//  ClassForCellCharactersTableViewCell.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 12.02.2023.
//

import UIKit

class CharactersTableViewCell: UITableViewCell {

    @IBOutlet weak var charImage: UIImageView!
    @IBOutlet weak var charName: UILabel!
    
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

// MARK: - Расширение класса UIImageView для загрузки изображений персонажей

extension UIImageView {
    
    func loadImage (urlSting: String){
        
        guard let url = URL (string: urlSting) else {return}
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data (contentsOf: url) {
                if let image = UIImage(data: data ) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
