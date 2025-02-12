//
//  StandingTeamInfoRow.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct StandingTeamInfoRow: View {
    var data: StandingsData

    var body: some View {
        HStack(spacing: 2) {
            Text(data.rank, format: .number)
                .font(.title3.weight(.light))
                .frame(width: 24)
            HStack(spacing: 8) {
                AsyncImage(url: URL(string: data.logo)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "figure.soccer")
                }
                .frame(width: 24)
                .padding(8)
                Text(data.name)
                    .font(.subheadline)
            }
            Spacer()
            Divider()
        }
        .padding(.leading, 20)
    }
}
