//
//  ProfileViewController.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 16/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        self.title = "Profil"
        self.navigationItem.largeTitleDisplayMode = .never
        self.view.backgroundColor = .systemBackground
        contentView.layer.cornerRadius = 10
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        profileImageView.clipsToBounds = true
    }

}
