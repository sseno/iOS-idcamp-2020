//
//  ViewController.swift
//  hello-dicoding
//
//  Created by Rohmat Suseno on 14/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dicodingLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    var likeCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        likeButton.setTitle("Like 0", for: .normal)
    }
    
    @IBAction func didClickLikeButton(_ sender: UIButton) {
        likeCount += 1
        likeButton.setTitle("Like \(likeCount)", for: .normal)
    }


}

