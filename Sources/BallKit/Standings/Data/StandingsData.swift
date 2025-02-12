//
//  StandingsData.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import Foundation

/// Data model for StandingsData
public struct StandingsData: Identifiable {
    /// Rank of the team
    public let rank: Int

    /// Id of the team
    public let id: String

    /// Name of the team
    public let name: String

    /// Logo url of the team
    public let logo: String

    /// Stats of the team as an array of StatsData
    public let stats: [StatsData]

    /// Last 5 games of the team as an array of LastGameData
    public let lastFiveGames: [LastGameData]

    /// Initializer for StandingsData
    /// - Parameters:
    ///   - rank: Rank of the team
    ///   - id: Id of the team
    ///   - name: Name of the team
    ///   - logo: Logo url of the team
    ///   - stats: Stats of the team as an array of StatsData
    ///   - lastFiveGames: Last 5 games of the team as an array of LastGameData
    public init(
        rank: Int,
        id: String,
        name: String,
        logo: String,
        stats: [StatsData],
        lastFiveGames: [LastGameData]
    ) {
        self.rank = rank
        self.id = id
        self.name = name
        self.logo = logo
        self.stats = stats
        self.lastFiveGames = lastFiveGames
    }
}
