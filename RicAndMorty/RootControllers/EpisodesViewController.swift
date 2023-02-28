//
//  ViewController.swift
//  RicAndMorty
//
//  Created by Linar Adgemov on 07.11.2022.
//

import UIKit

class EpisodesViewController: UIViewController {
    
    @IBOutlet weak var tableEpisodes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forSetBackground ()
        
        requestEpisodes {
            self.tableEpisodes.reloadData()
            print ("Success")
        }
        
        tableEpisodes.dataSource = self
        tableEpisodes.delegate = self
    }
    // MARK: - Установка картинки на задний фон

    func forSetBackground () {
        let image = UIImage(named: "BackgroundPicture")
        let imageView = UIImageView(image: image)
        tableEpisodes.backgroundView = imageView
        imageView.alpha = 0.8
    }
    
    // MARK: - Функция для перехода на экран "Данные эпизода" 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TheEpisodesDescriptionViewController {
            destination.episode = arrayEpisodes[tableEpisodes.indexPathForSelectedRow!.row]
        }
    }
}
// MARK: - Реализация методов протокола UITableViewDataSource

extension EpisodesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEpisodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell (withIdentifier: ClassForCellEpisodesTableViewCell.IDcell) as! ClassForCellEpisodesTableViewCell
        cell.LableName.text = arrayEpisodes [indexPath.row].name
        cell.LableID.text = "\(arrayEpisodes [indexPath.row].id)"
        return cell
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Список эпизодов"
//    }
//    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 44
//    }
//    
    
}

// MARK: - Реализация методов протокола UITableViewDelegate

extension EpisodesViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "goToTheEpisodesDescriptionViewController", sender: indexPath)
//    }
}
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        if let headerCell = Bundle.main.loadNibNamed(<#T##name: String##String#>, owner: <#T##Any?#>, options: <#T##[UINib.OptionsKey : Any]?#>)
    //
    //    }
