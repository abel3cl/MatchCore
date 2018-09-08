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
    public let messages: [String]
    public let player: Player?
    
    private init(type: MessageType, messages: [String], player: Player? = nil) {
        self.type = type
        self.messages = messages
        self.player = player
    }
    
    public static func join(player: Player) -> Message {
        return Message(type: .join, messages: [], player: player)
    }
    
    public static func stop() -> Message {
        return Message(type: .stop, messages: [])
    }
    
    public static func turn(messages: [String], player: Player) -> Message {
        return Message(type: .turn, messages: messages, player: player)
    }
    
    public static func finish(messages: [String], winningPlayer: Player?) -> Message {
        return Message(type: .finish, messages: messages, player: winningPlayer)
    }
    
    
}
