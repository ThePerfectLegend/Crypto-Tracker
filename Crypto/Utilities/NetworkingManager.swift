//
//  NetworkingManager.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 19.05.2022.
//

import Foundation
import Combine

class NetworkingManager {
    
    enum NetworkingError: LocalizedError {
        case badURLResponce(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponce(url: let url):
                return "[🔥] Bad responce from URL: \(url)"
            case .unknown:
                return "[⚠️] Unknown error"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url) // executing in background thread automaticly
//            .subscribe(on: DispatchQueue.global(qos: .default)) <- no need subscribe here
            .tryMap({ try handleURLResponce(output: $0, url: url) })
            .retry(3)
//            .receive(on: DispatchQueue.main) <- going in main thread in used services
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponce(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let responce = output.response as? HTTPURLResponse,
              responce.statusCode >= 200 && responce.statusCode < 300 else {
                  throw NetworkingError.badURLResponce(url: url)
              }
        return output.data
    }
    
    static func handleComletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
}
