//
//  DetailCountryCell.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 16/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class DetailCountryCell: UITableViewCell {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var confirmedCountLabel: UILabel!
    @IBOutlet weak var recoveredCountLabel: UILabel!
    @IBOutlet weak var deathCountLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var newsUpdateLabel: UILabel!
    @IBOutlet weak var secondLineView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        flagImageView.layer.cornerRadius = 10
        flagImageView.clipsToBounds = true
    }
    
    func hideViews() {
        secondLineView.isHidden = true
        newsUpdateLabel.isHidden = true
    }
}
