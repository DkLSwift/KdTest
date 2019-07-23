//
//  Service.swift
//  Kd_test
//
//  Created by Eric DkL on 23/07/2019.
//  Copyright © 2019 Eric DkL. All rights reserved.
//

import Foundation
import Apollo

class Service {
    
    let apollo: ApolloClient = {
        let configuration = URLSessionConfiguration.default
        
        configuration.httpAdditionalHeaders = ["Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIwMjg1OTVjNy03OTcyLTQ3NGYtOWQ2NC0xZTgxYWUyZDQ4YmQiLCJzdWIiOiI1YTdjOTU5OC05MDQzLTRmMDQtOTExMC1iNjYzNWJmNDZkYzYiLCJzY3AiOiJ1c2VyIiwiYXVkIjpudWxsLCJpYXQiOjE1NjM4NjMzODYsImV4cCI6MTU2NDQ2ODE4Nn0.vi_kHglVWI0FpJwIY7MWklEyoUo62LftyJBsCd3wlQM"]
        
        let url = URL(string: "https://staging.kard.eu/graphql")
        
        return ApolloClient(networkTransport: HTTPNetworkTransport(url: url!, configuration: configuration, sendOperationIdentifiers: false))
    }()
    
    static let shared = Service()
    
    func getMe(completion: @escaping ([Result]?, Error?) -> Void) {
        
        let getMeQL = GetMeQlQuery()
        
        var results = [Result]()
        
        apollo.fetch(query: getMeQL) { (result, error) in
            
            guard let me = result?.data?.me else {
                print("No data found for me")
                return
            }
            
            if let err = error {
                completion(nil, err)
                print("*********", err.localizedDescription)
                return
            }
            
            for res in (me.transactions?.edges)! {

                let result = Result(title: res?.node?.title ?? "", description: res?.node?.description ?? "", currency: res?.node?.amount?.currency!.symbol ?? "", imageUrl: res?.node?.category?.image?.url ?? "", value: res?.node?.amount?.value ?? 0)

                results.append(result)
            }
            completion(results, nil)
        }
    }
    
    
}
