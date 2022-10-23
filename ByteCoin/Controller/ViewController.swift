//
//  ViewController.swift
//  ByteCoin
//
//  Created by Eldor Alikuvatov on 2022/10/17.
//

import UIKit

let coinManager = CoinManager(currenyArray: currenyArray)

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currenyArray[row]
    }
}
