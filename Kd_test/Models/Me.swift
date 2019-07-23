//
//  Me.swift
//  Kd_test
//
//  Created by Eric DkL on 23/07/2019.
//  Copyright © 2019 Eric DkL. All rights reserved.
//


import Foundation

//struct Edges {
//    let edges: [Edges]
//}
//
//struct Edge: Codable {
//    let node: Node
//}
//
//struct Node: Codable {
//    let title, description: String
//    let amount: Amount
//}
//struct Amount: Codable {
//    let currency: Currency
//    let value: Int
//}
//struct Currency: Codable {
//    let symbol: String
//}

struct Results {
    let results: [Result]
   
}
struct Result {
    let title, description, currency, imageUrl: String
    let value: Double
}

