//
//  Message.swift
//  Pods
//
//  Created by Abel Castro on 8/9/18.
//

import Foundation

public enum MessageType: String, Codable {
    case join = "join"
    case turn = "turn"
    case finish = "finish"
    case stop = "stop"
}

public class Message: Codable {
    public let type: MessageType
    public let message: String?
    public let player: Player?
    
    private init(type: MessageType, message: String? = nil, player: Player? = nil) {
        self.type = type
        self.message = message
        self.player = player
    }
    
    public static func join(player: Player) -> Message {
        return Message(type: .join, player: player)
    }
    
    public static func stop() -> Message {
        return Message(type: .stop)
    }
    
    public static func turn(message: String?, player: Player) -> Message {
        return Message(type: .turn, message: message, player: player)
    }
    
    public static func finish(winningPlayer: Player?) -> Message {
        return Message(type: .finish, player: winningPlayer)
    }
    
    
}
