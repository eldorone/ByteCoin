//
//  CoinData.swift
//  ByteCoin
//
//  Created by Eldor Alikuvatov on 2022/10/17.
//

import Foundation

struct CoinData: Codable {
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}
