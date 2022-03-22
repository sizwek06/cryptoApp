//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CoinViewController: UIViewController {
    
    var coinManager = CoinManager()
    
    @IBOutlet weak var bitCoinLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        coinManager.delegate = self
    }
}

//MARK: - UIPickerViewDataSource
extension CoinViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
}

//MARK: - UiPickerViewDelegate
extension CoinViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        coinManager.getCoinPrice(for: coinManager.currencyArray[row])
    }
}

//MARK: - CoinManagerDelegate
extension CoinViewController: CoinManagerDelegate {
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel) {
        DispatchQueue.main.async {
            self.bitCoinLabel.text = coinModel.rateString
            self.currencyLabel.text = coinModel.currency
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
