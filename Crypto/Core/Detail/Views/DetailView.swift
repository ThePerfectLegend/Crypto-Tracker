//
//  DetailView.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 24.05.2022.
//

import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    let coin: CoinModel
    
    var body: some View {
        Text(coin.name)
    }
}
