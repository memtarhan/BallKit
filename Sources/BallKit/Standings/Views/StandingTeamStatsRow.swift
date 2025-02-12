//
//  StandingTeamStatsRow.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct StandingTeamStatsRow: View {
    var data: StandingsData

    var body: some View {
        HStack(spacing: 0) {
            ForEach(data.stats) { stat in
                Text(stat.value, format: .number)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding(8)
                    .frame(width: 64)
                Divider()
            }
        }
    }
}
