//
//  ViewController.swift
//  MyHeroApp
//
//  Created by Rohmat Suseno on 15/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pahlawan Indonesia"
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell", for: indexPath) as! CustomTableViewCell
            
        let hero = heroes[indexPath.row]
        cell.titleLabel.text = hero.name
        cell.descLabel.text = hero.description
        cell.photoImageView.image = hero.photo
            
        cell.photoImageView.layer.cornerRadius = cell.photoImageView.frame.height / 2
        cell.photoImageView.clipsToBounds = true
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detail.hero = heroes[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

