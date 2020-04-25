//
//  DetailViewController.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 16/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class DetailViewController: MasterViewController {
    
    var data: Country?
    var newsUpdate = NewsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = data?.name
        setupTableView()
        setContentNews()
    }
    
    private func setupTableView() {
        tableView.separatorStyle = .none
        tableView.dataSource = self
        // Register cell
        tableView.register(UINib(nibName: "DetailCountryCell", bundle: nil), forCellReuseIdentifier: "DetailCellid")
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "NewsCellid")
    }
    
    private func setContentNews() {
        newsUpdate = dataNews.filter{ $0.id == self.data?.id }
    }
}

// MARK: - UITableViewDataSource
extension DetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : newsUpdate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCellid") as! DetailCountryCell
            cell.selectionStyle = .none
            cell.flagImageView.image = data?.flag
            cell.confirmedCountLabel.text = data?.confirmedCount.withCommas()
            cell.recoveredCountLabel.text = data?.recoveredCount.withCommas()
            cell.deathCountLabel.text = data?.deathCount.withCommas()
            cell.descLabel.text = data?.desc
            if self.newsUpdate.isEmpty {
                cell.hideViews()
            }
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCellid", for: indexPath) as! NewsCell
            cell.selectionStyle = .none
            let item = newsUpdate[indexPath.row]
            cell.titleLabel.text = item.title
            cell.sourceLabel.text = item.source
            cell.dateLabel.text = item.date
            return cell
        default:
            fatalError()
        }
    }
}
