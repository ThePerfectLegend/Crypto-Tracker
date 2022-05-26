//
//  Date.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 26.05.2022.
//

import Foundation

extension Date {
    
    init(coinGeckoDateString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "2021-11-10T14:24:11.849Z"
        let date = formatter.date(from: coinGeckoDateString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
}
