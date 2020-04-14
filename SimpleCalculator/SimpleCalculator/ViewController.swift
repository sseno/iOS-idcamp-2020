//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Rohmat Suseno on 14/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var hitungButton: UIButton!
    @IBOutlet weak var hasilLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didClickHitungButton(_ sender: UIButton) {
        if let h = Double(tf1.text ?? "0"), let w = Double(tf2.text ?? "0") {
            hasilLabel.text = String(h * w)
        } else {
            hasilLabel.text = "Hasil tidak valid"
        }
    }
    
    @IBAction func didClickRepeat(_ sender: UIButton) {
        tf1.text = ""
        tf2.text = ""
        hasilLabel.text = ""
    }
}

