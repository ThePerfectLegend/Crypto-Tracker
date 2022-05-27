//
//  MarketDataService.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 20.05.2022.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarkerDataModel? = nil
    
    var marketDataSubsription: AnyCancellable?
    
    init() {
        getMarketData()
    }
    
    public func getMarketData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubsription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleComletion, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubsription?.cancel()
            })
    }
    
}
