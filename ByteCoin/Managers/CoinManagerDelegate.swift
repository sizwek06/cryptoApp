//
//  CoinManagerDelegate.swift
//  ByteCoin
//
//  Created by Gugulethu Mhlanga on 2022/03/23.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel)
    func didFailWithError(error: Error)
}
