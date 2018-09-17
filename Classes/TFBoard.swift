//
//  Board.swift
//  MatchCore
//
//  Created by Abel Castro on 17/9/18.
//

import Foundation


public struct TFBoard: Codable {
    public let letter: String
    public let categories: [TFCategory: String?]
}
