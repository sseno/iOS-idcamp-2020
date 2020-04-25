//
//  MainViewController.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 15/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class MainViewController: MasterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
    
    private func setupNavigationBar() {
        self.title = "Negara"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        setupRightBarButtonItem()
    }
    
    func setTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        // Register cell
        tableView.register(UINib(nibName: "CountryCell", bundle: nil), forCellReuseIdentifier: "CountryCellid")
    }
    
    private func setupRightBarButtonItem() {
        let profileButton = UIButton(type: .custom)
        profileButton.setImage(UIImage(named: "ic_profile"), for: .normal)
        profileButton.tintColor = UIColor(named: "BarItemColor")
        profileButton.addTarget(self, action: #selector(didClickProfile(_:)), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: profileButton)
    }
    
    @objc func didClickProfile(_ sender: UIButton) {
        self.navigationController?.pushViewController(ProfileViewController(), animated: true)
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCellid", for: indexPath) as! CountryCell
        let item = dataCountries[indexPath.row]
        cell.flagImageView.image = item.flag
        cell.countryNameLabel.text = item.name
        cell.descLabel.text = item.desc
        cell.totalCasesLabel.text = item.confirmedCount.withCommas()
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.data = dataCountries[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
