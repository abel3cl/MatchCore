//
//  Player.swift
//  MatchCore_Tests
//
//  Created by Abel Castro on 8/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

public class TFPlayer {
    public let name: String
    public var currentScore: UInt
    public var board: TFBoard? = nil
    
    public init(name: String,
                currentScore: UInt,
                board: TFBoard?) {
        self.name = name
        self.currentScore = currentScore
        self.board = board
    }
    
    public required convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        let name = try container.decode(String.self, forKey: .name)
        let currentScore = try container.decode(UInt.self, forKey: .currentScore)
        let board = try container.decodeIfPresent(TFBoard.self, forKey: .board)
        self.init(name: name, currentScore: currentScore, board: board)
    }
}

extension TFPlayer: Decodable {
    enum Keys: CodingKey {
        case name
        case currentScore
        case board
    }

}
extension TFPlayer: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Keys.self)
        try container.encode(name, forKey: .name)
        try container.encode(currentScore, forKey: .currentScore)
        try container.encodeIfPresent(board, forKey: .board)
    }
}

extension TFPlayer: Hashable {
    public var hashValue: Int {
        return (self.name.hashValue + self.currentScore.hashValue) * 12345
    }
    
    public static func == (lhs: TFPlayer, rhs: TFPlayer) -> Bool {
        return lhs.name == rhs.name
    }
}
