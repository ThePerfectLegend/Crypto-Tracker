//
//  Double.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 17.05.2022.
//

import Foundation

extension Double {
    
    /// Converts a Double into Currency with 2 decimal places
    /// ```
    /// Converts 1234.56 to $1,234.56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // <- getting user default value from persistence
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a Double into Currency as a String with 2 decimal places
    /// ```
    /// Converts 1234.56 to "$1,234.56"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "00.00"
    }
    
    /// Converts a Double into Currency with 2-5 decimal places
    /// ```
    /// Converts 1234.56 to $1,234.56
    /// Converts 12.3456 to $12.3456
    /// Converts 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // <- getting user default value from persistence
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Converts a Double into Currency as a String with 2-5 decimal places
    /// ```
    /// Converts 1234.56 to "$1,234.56"
    /// Converts 12.3456 to "$12.3456"
    /// Converts 0.123456 to "$0.123456"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "00.00"
    }
    
    /// Converts a Double into string representation
    /// ```
    /// Converts 1.23456 to "1.23"
    /// ```
    func asNumberString() -> String {
        String(format: "%.2f", self)
    }
    
    /// Converts a Double into string representation with % symbol
    /// ```
    /// Converts 1.23456 to "1.23%"
    /// ```
    func asPercentString() -> String {
        asNumberString() + "%"
    }
    
}
