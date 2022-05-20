//
//  CoinImageSevrice.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 19.05.2022.
//

import Foundation
import Combine
import SwiftUI

class CoinImageSevrice {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            // Retrieving image from File Manager
        } else {
            downloadCoinImage()
            // Downloading image
        }
    }
    
    private func downloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleComletion, receiveValue: { [weak self] (returnedImage) in
                guard let self = self,
                let downloadImage = returnedImage
                else { return }
                self.image = downloadImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downloadImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
    
}
