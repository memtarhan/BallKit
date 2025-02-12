//
//  LastGameData.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import Foundation

/// Enum data model for Game Status
public enum GameStatus: String {
    case win = "W"
    case loss = "L"
    case draw = "D"
    case unknown = "U"

    /// Initializer for GameStatus, default value is .unknown
    /// - Parameter withLetter: letter of the status
    public init(withLetter rawValue: String) {
        switch rawValue {
        case "W": self = .win
        case "L": self = .loss
        case "D": self = .draw
        default: self = .unknown
        }
    }

    /// A letter to be displayed for the game status
    public var displayLetter: String {
        rawValue
    }
}

/// Data  model for Last Game (Used for last 5 games)
public struct LastGameData: Identifiable {
    /// Id of the game
    public var id: String

    /// Status of the game
    public let status: GameStatus

    /// Initializer for LastGameData
    /// - Parameters:
    ///   - id: Id of the game
    ///   - status: status of the game in type of GameStats
    public init(
        id: String,
        status: GameStatus
    ) {
        self.id = id
        self.status = status
    }
}
