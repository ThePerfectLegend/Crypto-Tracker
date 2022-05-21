//
//  CryptoApp.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 16.05.2022.
//

import SwiftUI

@main
struct CryptoApp: App {
    
    @StateObject private var coinViewModel = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]

    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(coinViewModel)
        }
    }
}
