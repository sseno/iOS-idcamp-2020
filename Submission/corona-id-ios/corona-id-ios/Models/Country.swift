//
//  Country.swift
//  corona-id-ios
//
//  Created by Rohmat Suseno on 15/04/20.
//  Copyright © 2020 github.com/sseno. All rights reserved.
//

import UIKit

typealias Countries = [Country]

struct Country {
    let id: String // Country Id
    let name: String // Country name
    let desc: String // Country detail, sumber wikipedia
    let flag: UIImage
    let confirmedCount: Int
    let recoveredCount: Int
    let deathCount: Int
    
    init(id: String, name: String, desc: String, flag: UIImage, confirmedCount: Int, recoveredCount: Int, deathCount: Int) {
        self.id = id
        self.name = name
        self.desc = desc
        self.flag = flag
        self.confirmedCount = confirmedCount
        self.recoveredCount = recoveredCount
        self.deathCount = deathCount
    }
}

// Data dummy country
let dataCountries: Countries = [
    .init(id: "us", name: "United States", desc: "Amerika Serikat, disingkat dengan AS, atau secara umum dikenal dengan Amerika saja, adalah sebuah negara republik konstitusional federal yang terdiri dari lima puluh negara bagian dan sebuah distrik federal.", flag: UIImage(named: "us_flag")!, confirmedCount: 609995, recoveredCount: 50107, deathCount: 26950),
    .init(id: "es", name: "Spain", desc: "Spanyol, secara resmi dikenal dengan sebutan Kerajaan Spanyol adalah sebuah negara di Eropa barat daya yang, bersama Portugal, terdapat di Semenanjung Iberia. Batas darat Spanyol dengan Eropa adalah Pegunungan Pirenia dengan Prancis dan Andorra.", flag: UIImage(named: "es_flag")!, confirmedCount: 177633, recoveredCount: 18579, deathCount: 70853),
    .init(id: "it", name: "Italy", desc: "Italia, resminya Republik Italia bahasa Italia: Repubblica Italiana, adalah sebuah negara kesatuan republik parlementer di Eropa Terletak di jantung Laut Mediterania. Italia berbatasan dengan Prancis, Swiss, Austria, Slovenia, San Marino dan Vatikan.", flag: UIImage(named: "it_flag")!, confirmedCount: 162488, recoveredCount: 21645, deathCount: 38095),
    .init(id: "de", name: "Germany", desc: "Republik Federal Jerman adalah negara berbentuk federasi di Eropa Barat. Negara ini memiliki posisi ekonomi dan politik yang sangat penting di Eropa maupun di dunia.", flag: UIImage(named: "de_flag")!, confirmedCount: 132553, recoveredCount: 3592, deathCount: 72600),
    .init(id:"fr", name: "France", desc: "Republik Prancis atau Prancis adalah sebuah negara yang teritori metropolitannya terletak di Eropa Barat dan juga memiliki berbagai pulau dan teritori seberang laut yang terletak di benua lain. Prancis Metropolitan memanjang dari Laut Mediterania hingga Selat Inggris dan Laut Utara, dan dari Rhine ke Samudera Atlantik. Orang Prancis sering menyebut Prancis Metropolitan sebagai \"L'Hexagone\" (\"Heksagon\") karena bentuk geometris teritorinya. Prancis adalah sebuah republik kesatuan semi-presidensial. Ideologi utamanya tercantum dalam Deklarasi Hak Asasi Manusia dan Warga Negara.", flag: UIImage(named: "fr_flag")!, confirmedCount: 131365, recoveredCount: 17188, deathCount: 31273),
    .init(id: "uk", name: "United Kingdom", desc: "Kerajaan Bersatu Britania Raya dan Irlandia Utara, atau secara umum dikenal sebagai Britania Raya, atau Britania, adalah sebuah negara berdaulat yang terletak di lepas pantai barat laut benua Eropa. Britania Raya adalah sebuah negara kepulauan yang terdiri dari Pulau Britania Raya, bagian timur laut Pulau Irlandia dan sejumlah pulau-pulau yang lebih kecil. Irlandia Utara adalah satu-satunya bagian dari Britania Raya yang berbagi perbatasan darat dengan negara berdaulat lain, yaitu Republik Irlandia. Selebihnya, perbatasan darat Britania Raya dikelilingi oleh Samudra Atlantik, Laut Utara, Selat Inggris dan Laut Irlandia.", flag: UIImage(named: "uk_flag")!, confirmedCount: 12892, recoveredCount: 365, deathCount: 26950),
    .init(id: "cn", name: "China", desc: "Republik Rakyat Tiongkok atau Republik Rakyat Cina adalah sebuah negara yang terletak di Asia Timur yang beribu kota di Beijing Negara ini memiliki jumlah penduduk terbanyak di dunia dan luas wilayah 9,69 juta kilometer persegi, menjadikannya negara ke-3 terbesar di dunia. Negara ini didirikan pada tahun 1949 setelah berakhirnya Perang Saudara Tiongkok, dan sejak saat itu dipimpin oleh sebuah partai tunggal, yaitu Partai Komunis Tiongkok (PKT). Sekalipun sering kali dilihat sebagai negara komunis, kebanyakan ekonomi republik ini telah diswastakan sejak tahun 1980-an. Walau bagaimanapun, pemerintah masih mengawasi ekonominya secara politik terutama dengan perusahaan-perusahaan milik pemerintah dan sektor perbankan. Secara politik, ia masih tetap menjadi pemerintahan satu partai.", flag: UIImage(named: "cn_flag")!, confirmedCount: 83355, recoveredCount: 78311, deathCount: 3346),
    .init(id: "ir", name: "Iran", desc: "Iran adalah sebuah negara Timur Tengah yang terletak di Asia Barat Daya. Meski negara ini telah dikenal penduduk lokal sebagai Iran sejak zaman kuno, hingga tahun 1935 Iran masih disebut Persia di dunia Barat. Pada tahun 1959, Mohammad Reza Shah Pahlavi mengumumkan bahwa kedua istilah tersebut boleh digunakan.", flag: UIImage(named: "ir_flag")!, confirmedCount: 76389, recoveredCount: 4777, deathCount: 49933),
    .init(id: "tr", name: "Turkey", desc: "Republik Turki disebut Türkiye adalah sebuah negara besar di kawasan Eurasia. Wilayahnya terbentang dari Semenanjung Anatolia di Asia Barat Daya dan daerah Balkan di Eropa Tenggara.\n\nTurki berbatasan dengan Laut Hitam di sebelah utara; Bulgaria di sebelah barat laut; Yunani dan Laut Aegea di sebelah barat; Georgia di timur laut; Armenia, Azerbaijan, dan Iran di sebelah timur; dan Irak dan Suriah di tenggara; dan Laut Mediterania di sebelah selatan. Laut Marmara yang merupakan bagian dari Turki digunakan untuk menandai batas wilayah Eropa dan Asia, sehingga Turki dikenal sebagai negara transkontinental.", flag: UIImage(named: "tr_flag")!, confirmedCount: 65111, recoveredCount: 1403, deathCount: 5674),
    .init(id: "id", name: "Indonesia", desc: "Indonesia disebut juga dengan Republik Indonesia atau Negara Kesatuan Republik Indonesia, adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia.\n\nIndonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau. Nama alternatif yang biasa dipakai adalah Nusantara. Dengan populasi Hampir 270.054.853 jiwa pada tahun 2018, Indonesia adalah negara berpenduduk terbesar keempat di dunia dan negara yang berpenduduk Muslim terbesar di dunia, dengan lebih dari 230 juta jiwa.", flag: UIImage(named: "id_flag")!, confirmedCount: 5136, recoveredCount: 469, deathCount: 446),
]
