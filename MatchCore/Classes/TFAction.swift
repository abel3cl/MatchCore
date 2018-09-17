//
//  Action.swift
//  Pods
//
//  Created by Abel Castro on 17/9/18.
//

import Foundation

public enum TFAction {
    enum CodingKeys: String, CodingKey {
        case start
        case left
        case tuttifruti
    }
    case start(TFBoard)
    case left(TFPlayer)
    case tuttifruti(TFPlayer)
}

extension TFAction: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let start = try container.decodeIfPresent(TFBoard.self, forKey: .start) {
            self = .start(start)
        }
        if let left = try container.decodeIfPresent(TFPlayer.self, forKey: .left) {
            self = .left(left)
        }
        if let tuttifruti = try container.decodeIfPresent(TFPlayer.self, forKey: .tuttifruti) {
            self = .tuttifruti(tuttifruti)
        }
        
        self = .start(TFBoard(letter: "", categories: [:]))
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .start(let board):
            try container.encode(board, forKey: TFAction.CodingKeys.start)
        case .left(let player):
            try container.encode(player, forKey: TFAction.CodingKeys.left)
        case .tuttifruti(let player):
            try container.encode(player, forKey: TFAction.CodingKeys.tuttifruti)
        }
    }
}
