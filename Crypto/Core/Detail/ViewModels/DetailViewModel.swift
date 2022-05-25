//
//  DetailViewModel.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 25.05.2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetail) in
                print("Recieved Coin Detail Data")
                print(returnedCoinDetail)
            }
            .store(in: &cancellables)
    }
    
}
