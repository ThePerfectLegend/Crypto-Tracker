//
//  CoinDetailDataService.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 25.05.2022.
//

import Foundation
import Combine

class CoinDetailDataService {
    
    @Published var coinDetails: CoinDetailModel? = nil
    
    var coinDetailSubsription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetail()
    }
    
    public func getCoinDetail() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else { return }
        
        coinDetailSubsription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleComletion, receiveValue: { [weak self] (returnedCoinDetail) in
                self?.coinDetails = returnedCoinDetail
                self?.coinDetailSubsription?.cancel()
            })
    }
    
}

