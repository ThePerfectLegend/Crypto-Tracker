//
//  String.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 26.05.2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
