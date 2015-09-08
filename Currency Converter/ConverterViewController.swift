//
//  ViewController.swift
//  Currency Converter
//
//  Created by Handy on 07/09/15.
//  Copyright (c) 2015 RU Informática. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var fromCurrencyBox: UITextField!
    @IBOutlet weak var toCurrencyBox: UITextField!
    @IBOutlet weak var amountBox: UITextField!
    @IBOutlet weak var converrtBtn: UIButton!
    @IBOutlet weak var resultBox: UITextField!
    
    let viewModel = ConverterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doConvert(sender: UIButton) {
        viewModel.fromCurrency = fromCurrencyBox.text
        viewModel.toCurrency = toCurrencyBox.text
        viewModel.amount = (amountBox.text as NSString).doubleValue;
        
        viewModel.convert()
        
        resultBox.text = viewModel.result.description
    }

}

