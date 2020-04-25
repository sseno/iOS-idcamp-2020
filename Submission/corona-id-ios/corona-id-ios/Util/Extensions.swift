//
//  Extensions.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 16/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import Foundation

extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
