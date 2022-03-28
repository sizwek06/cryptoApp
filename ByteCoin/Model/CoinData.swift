//
//  CoinData.swift
//  ByteCoin
//
//  Created by Sizwe Khathi on 2022/03/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

// MARK: - CoinData
struct CoinData: Codable {
    
    let rate: Double
    let assetIdQuote: String
    
    enum CodingKeys: String, CodingKey {
        case rate
        case assetIdQuote = "asset_id_quote" // This is to ensure the key for 'asset_id_quote' is always in camelCase format (assetIdQuote) - which is the general format Swift uses
    }
}
