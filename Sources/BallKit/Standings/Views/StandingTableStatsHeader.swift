//
//  StandingTableStatsHeader.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct StandingTableStatsHeader: View {
    var stats: [StatsData]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(stats) { stat in
                Menu(stat.shortDescription) {
                    if let tooltip = stat.tooltip {
                        Text(tooltip)
                    }
                }
                .font(.headline.bold())
                .foregroundColor(Color.red)
                .padding(8)
                .frame(width: 64)
                Divider()
            }
        }
    }
}
