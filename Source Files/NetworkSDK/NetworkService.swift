//
//  NetworkService.swift
//  NetworkSDK
//
//  Created by Mudit Bhatnagar on 22/05/24.
//

import Foundation

public class NetworkService {
    public static let shared = NetworkService()
    
    private init() {}
    
    public func fetchData(url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            }
            
            guard let data = data else {
                let error = NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])
                completion(.failure(error))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
