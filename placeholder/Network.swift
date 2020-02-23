//
//  Network.swift
//  placeholder
//
//  Created by Russell Ong on 23/2/20.
//  Copyright © 2020 h4h. All rights reserved.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://2e93d3d6.ngrok.io/graphql")!)
}
