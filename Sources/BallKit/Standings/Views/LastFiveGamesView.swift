//
//  LastFiveGamesView.swift
//  BallKit
//
//  Created by Mehmet Tarhan on 12.02.2025.
//

import SwiftUI

struct LastFiveGamesView: View {
    var data: [LastGameData]
    var body: some View {
        HStack(spacing: 4) {
            ForEach(data) { game in
                Text(game.status.displayLetter)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 32)
                    .background(getColor(for: game.status))
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .foregroundStyle(Color.primary)
            }

            Spacer()
        }
        .frame(height: 45)
        .padding(.leading, 20)
    }

    private func getColor(for status: GameStatus) -> Color {
        switch status {
        case .win:
            return .green
        case .loss:
            return .red
        case .draw:
            return .gray
        case .unknown:
            return .black
        }
    }
}
