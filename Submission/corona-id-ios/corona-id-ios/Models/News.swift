//
//  News.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 16/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

typealias NewsList = [News]

struct News {
    let id: String
    let title: String
    let date: String
    let region: String
    let source: String
    
    init(id: String, title: String, date: String, region: String, source: String) {
        self.id = id
        self.title = title
        self.date = date
        self.region = region
        self.source = source
    }
}

// Data dummy news
let dataNews: NewsList = [
    .init(id: "id", title: "Data Corona RI Kini Dibuka: Jumlah PDP 10.482, ODP 139.137", date: "30 menit yang lalu", region: "Jakarta", source: "Detik.com"),
    .init(id: "id", title: "Ragam Cara Dukung Pencegahan COVID-19 saat #DiRumahAja", date: "45 menit yang lalu", region: "Jakarta", source: "Detik.com"),
    .init(id: "id", title: "Melihat Lagi PSBB Hari Pertama di Jawa Barat", date: "1 jam yang lalu", region: "Jakarta", source: "Detik.com"),
    .init(id: "us", title: "Coronavirus in the US: Latest COVID-19 news and case counts", date: "2 jam yang lalu", region: "NY", source: "Livescience.com"),
]
