//
//  CoinImage.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 19.05.2022.
//

import SwiftUI

struct CoinImageView: View {
    
    @StateObject var coinImageVM: CoinImageViewModel
    
    init(coin: CoinModel) {
        _coinImageVM = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = coinImageVM.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if coinImageVM.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}
