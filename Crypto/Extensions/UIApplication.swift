//
//  UIApplication.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 20.05.2022.
//  Force dismiss keyboard

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
