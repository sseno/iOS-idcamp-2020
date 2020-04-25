//
//  CountryCell.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 15/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var totalCasesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        self.flagImageView.layer.cornerRadius = 8
        self.flagImageView.clipsToBounds = true
    }    
}
