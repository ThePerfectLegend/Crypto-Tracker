//
//  HomeStatView.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 20.05.2022.
//

import SwiftUI

struct HomeStatView: View {
    
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(homeViewModel.statistic) { stat in
                MarketView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3.25)
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: showPortfolio ? .trailing : .leading)
    }
}

