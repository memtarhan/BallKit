//
//  StatsData.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import Foundation

/// Data model for stats
public struct StatsData: Identifiable {
    /// Description of the stat
    public let description: String

    /// Short description of the stat
    public let shortDescription: String

    /// Value of the stat
    public let value: Double

    /// Tooltip (info) of the stat
    public var tooltip: String?

    /// Id of the stat
    public var id: String {
        description + shortDescription + "\(value)"
    }

    /// Checks if tooltip feature (displaying info of stat with a popup view) is enabled
    public var isTooltipEnabled: Bool {
        tooltip != nil
    }

    /// Initializer for StatsData
    /// - Parameters:
    ///   - description: Description of the stat
    ///   - shortDescription: Short description of the stat
    ///   - value: Value of the stat
    ///   - tooltip: Tooltip (info) of the stat
    public init(
        description: String,
        shortDescription: String,
        value: Double,
        tooltip: String? = nil
    ) {
        self.description = description
        self.shortDescription = shortDescription
        self.value = value
        self.tooltip = tooltip
    }
}
