//
//  CharactersViewController.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 12.02.2023.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var tableCharacters: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestCharacters {
            self.tableCharacters.reloadData()
            print ("Success")
        }

        tableCharacters.dataSource = self
        tableCharacters.delegate = self
    }
}
// MARK: - Реализация методов протокола UITableViewDataSource

extension CharactersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCharacters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ClassForCellCharactersTableViewCell.IDcell) as! ClassForCellCharactersTableViewCell
        cell.charName.text = arrayCharacters [indexPath.row].name
        cell.charImage.loadImage(urlSting: arrayCharacters [indexPath.row].image)
    
        
        // MARK: - Реализация методов протокола UITableViewDataSource (дополнительные способы отображения картинок в tableView)

//        cell.charImage.image = UIImage(data: try! Data(contentsOf: URL(string: arrayCharacters[indexPath.row].image )!))
        
        
//                DispatchQueue.main.async {
//                    if let url = URL(string: arrayCharacters [indexPath.row].image) {
//                        if let data = try? Data(contentsOf: url) {
//                            cell.charImage.image = UIImage(data: data)
//                        }
//                    }
//                }
        return cell
    }
}
// MARK: - Реализация методов протокола UITableViewDelegate

extension CharactersViewController: UITableViewDelegate {

}













