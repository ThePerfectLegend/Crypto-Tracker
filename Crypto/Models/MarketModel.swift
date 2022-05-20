//
//  MarketModel.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 20.05.2022.
//

import Foundation

struct MarketModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
}
