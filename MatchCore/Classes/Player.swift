//
//  Player.swift
//  MatchCore_Tests
//
//  Created by Abel Castro on 8/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

public class Player {
    var name: String
    var currentScore: UInt
    
    public init(name: String,
                currentScore: UInt) {
        self.name = name
        self.currentScore = currentScore
    }
    
    public required convenience init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        let name = try container.decode(String.self, forKey: .name)
        let currentScore = try container.decode(UInt.self, forKey: .currentScore)
        self.init(name: name, currentScore: currentScore)
    }
}

extension Player: Decodable {
    enum Keys : CodingKey {
        case name
        case currentScore
    }

}
extension Player: Encodable {
    public func encode(to encoder: Encoder) throws {
        
    }
}
