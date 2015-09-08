//
//  CurrencyConverterService.swift
//  Currency Converter
//
//  Created by Handy on 07/09/15.
//  Copyright (c) 2015 RU Informática. All rights reserved.
//

import Foundation

class CurrencyConverterService {
    
    private let url : String
    
    init(url : String) {
        self.url = url
    }
    
    func convert(from : String, to : String, amount : Double) -> Double {
        let requestUrlString = url + "/api/Currencies/" + from + "/" + to + "/" + amount.description + "/"
        let requestUrl = NSURL(string : requestUrlString)
        let request = NSMutableURLRequest(URL: requestUrl!)
        
        
        
        return 0;
    }
}