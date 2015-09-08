//
//  ConverterViewModel.swift
//  Currency Converter
//
//  Created by Handy on 07/09/15.
//  Copyright (c) 2015 RU Informática. All rights reserved.
//

import Foundation

class ConverterViewModel {
    
    var fromCurrency : String = ""
    var toCurrency : String = ""
    var amount : Double = 0
    var result : Double = 0
    
    init() {
        //Nothing
    }
    
    func convert() {
        let service = CurrencyConverterService(url : "https://microsoft-apiapp28deef1b6fcd4cdbb65b85c55951980c.azurewebsites.net");
        result = service.convert(fromCurrency, to : toCurrency, amount: amount)
    }
}