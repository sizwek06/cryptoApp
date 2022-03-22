//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Sizwe Khathi on 2022/03/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let rate: Double
    let currency: String
    
    var rateString: String {
        return String(format: "%.2f", rate)
    }
}
